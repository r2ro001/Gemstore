/**
 * 
 */

(function ()
		{
			var app = angular.module('store', ['store-products']);
			
			app.controller('StoreController', function(){
				
//				var store = this;
//				store.products = [];
//				
//				$http.get('/products.json').success(function(data) {
//					store.products = data;
//					
//				});
				
				
				this.products = galaxies;
			});
			
			
			
			app.controller('ReviewController', function(){
				this.review = {};
				
				this.addReview = function(product)
				{
					this.review.createdOn = Date.now();
					product.reviews.push(this.review);
					
					this.review = {};
				};
				
			});
			
			
			
			
			var galaxies = [
			            {
							name: 'Alpha', 
							price: 2.95,
							description: 'Cold, dark and dry',
							canPurchase: true,
							soldOut: false,
							image: {
								full: 'G1.png',
								thumb: 'G1.png'
							},
							reviews: [
							   {
								   rating: "5 stars",
								   body: "Perfect for my skin",
								   author: "John"
							   },
							   
							   {
								   rating: "3.6 stars", 
								   body: "Too shinny!",
								   author: "Art"
							   }
							  
							      	]
			            },
			            
			            {
							name: 'Gamma', 
							price: 5.95,
							description: 'Silent, calm and full of tiny creatures to inspect...I would not try to mess with them',
							canPurchase: true,
							soldOut: false,
							image: {
								full: 'G2.png',
								thumb: 'G2.png'
							},
			            	reviews: [
			            	          {
			            	        	rating: "4 stars",
			            	        	body: "The right price for this set of worlds, I must rule them.",
			            	        	author: "Neo"
			            	          },
			            	          
			            	          {
			            	        	rating: "5 stars",
			            	        	body: "...you shall not pass.",
			            	        	author: "Gandalf"
			            	          }
			            	          ]
			            
			            },
			            {
							name: 'X10Z2', 
							price: 0.95,
							description: 'Round and flat...',
							canPurchase: true,
							soldOut: false,
							image: {
								full: 'G3.png',
								thumb: 'G3.png'
							},
							
							reviews: [
			            	          {
			            	        	rating: "4 stars",
			            	        	body: "Nice color.",
			            	        	author: "Neo"
			            	          }
			            	          ]
			            },
			            
			            {
							name: 'Omega', 
							price: 0.95,
							description: 'Ruled by titans, this galaxy is the arena in which endless conflict and war arises. Enter if you dare.',
							canPurchase: true,
							soldOut: false,
							image: {
								full: 'G4.png',
								thumb: 'G4.png'
							},
							
							reviews: [
			            	          {
			            	        	rating: "4 stars",
			            	        	body: "Everything that has a beginning...has an end.",
			            	        	author: "Neo"
			            	          }
			            	          ]
			            }
			            ];
			
			
		})();
