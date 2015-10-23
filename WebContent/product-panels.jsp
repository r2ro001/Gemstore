<section>
<ul class="nav nav-pills">
<li ng-class="panel"><a href ng-click="panel.selectTab(1)">Description</a></li>
<li ng-class="panel"><a href ng-click="panel.selectTab(2)">Specifications</a></li>
<li ng-class="panel"><a href ng-click="panel.selectTab(3)">Reviews</a></li>
</ul>


<div class="panel" ng-show="panel.isSelected(1)">
<h4>Description</h4>
<p>{{product.description}}</p>
</div>

<div class="panel" ng-show="panel.isSelected(2)">
<h4>Specifications</h4>
<p></p>
</div>

<div class="panel" ng-show="panel.isSelected(3)">
<h4>Reviews</h4>

<div ng-repeat="review in product.reviews">
<blockquote>
<p><b>{{review.rating}}</b>
{{review.body}}</p>
<p>-<cite>{{review.author}} on {{review.createdOn | date}}</p></cite>
</blockquote>
</div>



<form name="reviewForm" ng-controller="ReviewController as reviewCtrl" 
						ng-submit="reviewForm.$valid && reviewCtrl.addReview(product)" novalidate>
<blockquote>
<p><b>{{reviewCtrl.review.rating}}</b></p>
<p>{{reviewCtrl.review.body}}</p>
<cite class="clearfix" ng-show="reviewForm.$valid">{{reviewCtrl.review.author}} on {{reviewCtrl.review.createdOn | date}}</cite>
</blockquote>
<select ng-model="reviewCtrl.review.rating" ng-options="stars for stars in [5,4,3,2,1]"  title="Stars" required>
<option value="">Rate</option>
</select><br>
<textarea ng-model="reviewCtrl.review.body"></textarea required><br>
<label>by:</label><br>
<input type="email" ng-model="reviewCtrl.review.author" required /><br>
<input type="submit" value="submit review">
</form>

</div>
</section>
<button ng-show="product.canPurchase">Add to cart</button>

