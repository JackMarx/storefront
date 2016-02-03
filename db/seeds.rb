User.delete_all
Supplier.delete_all
Product.delete_all
Image.delete_all
Category.delete_all

Category.create!([
  {name: "beef"      },
  {name: "shrimp"     },
  {name: "chicken"    },
  {name: "combustable"},
  {name: "fancy"      },
  ])   

User.create!([
  {email: "josh@google.com", password: "password", password_confirmation: "password"},
  {email: "joe@google.com", password: "password", password_confirmation: "password"},
  {email: "jack@google.com", password: "password", password_confirmation: "password"},
  ])


Supplier.create!([
  {name: "Joe on the corner", email: "foodpoisioning@aol.com", phone: "307-555-4554"},
  {name: "Devil's Tacos", email: "diablo@gmail.com", phone: "310-555-2525"},
  {name: "Taco Bell", email: "tbell@tacobell.com", phone: "312-555-6789"}
  ])

Product.create!([
  {name: "Cochinita Pibil", price: 122, description: "Mouthwatering, slow-cooked pork on a corn tortilla, served with queso fresco, pickled onions y cilantro!", rating: 2, supplier_id: Supplier.all.sample.id},
  {name: "Al Pastor", price: 14, description: "Succulent, smoky, earthy, spiced and grilled pork strips seasoned with adobo seasoning. Served on a corn tortilla with cilantro y cebollas", rating: 7, supplier_id: Supplier.all.sample.id},
  {name: "Tacos de Asador", price: 343, description: "Skirt steak seasoned and grilled until crisp, served in a corn tortilla with cilantro y cebollas. Spicy habanero or medium chile salsa upon request. #awesome", rating: 4, supplier_id: Supplier.all.sample.id},
  {name: "Tacos de pescado", price: 121, description: "Fresh Mahi Mahi battered and flash-fried, served on a corn tortilla and garnished with slaw, crema and a side of avocado, lime and pico de gallo.", rating: 5, supplier_id: Supplier.all.sample.id},
  {name: "Exploding Taco", price: 10, description: "BOOM!", rating: 10, supplier_id: Supplier.find_by(name: "Joe on the corner").id},
  {name: "Carnitas", price: 65, description: "Twice-cooked mouthwatering pork tacos served on a corn tortilla con cebollas y cilantro", rating: 6, supplier_id: Supplier.all.sample.id},
  ])


Image.create!([
  {url: "http://www.foodpeoplewant.com/wp-content/uploads/2009/09/Tacos-De-Cochinita-Pibil-1024x686.jpg", product_id: Product.all.sample.id },
  {url: "http://stream1.gifsoup.com/view7/4201326/exploding-taco-in-slow-motion-o.gif", product_id: Product.find_by(name: "Exploding Taco").id },
  {url: "http://upload.wikimedia.org/wikipedia/commons/b/b5/01_Tacos_al_Pastor.jpg", product_id: Product.all.sample.id },
  {url: "http://chicago.seriouseats.com/images/2012/10/20121004-224862-chicago-tacos-2-amigos-carne-asada.jpg", product_id: Product.all.sample.id },
  {url: "http://i.ytimg.com/vi/gN8IVq7Phn4/maxresdefault.jpg", product_id: Product.all.sample.id },
  {url: "https://upload.wikimedia.org/wikipedia/commons/7/73/001_Tacos_de_carnitas,_carne_asada_y_al_pastor.jpg", product_id: Product.all.sample.id },
  {url: "http://eclecticrecipes.com/wp-content/uploads/2013/09/taco.jpg", product_id: Product.all.sample.id },
  {url: "http://californiatortilla.com/caltort/wp-content/uploads/2012/11/Steak-taco.jpg", product_id: Product.all.sample.id },
  {url: "http://e.fastcompany.net/multisite_files/fastcompany/imagecache/inline-large/inline/2013/04/3008346-inli, product_id: Product.all.sample.id ne-inline-1-deep-inside-doritos-loco-taco.jpg"},
  {url: "http://www.cookingclassy.com/wp-content/uploads/2012/11/shredded+beef+tacos.jpg", product_id: Product.all.sample.id },
  {url: "http://assets3.thrillist.com/v1/image/1327510/size/tl-horizontal_main/where-to-get-the-5-best-new-tacos-, product_id: Product.all.sample.id in-miami"},
  {url: "http://www.rawstory.com/wp-content/uploads/2015/08/Taco-Bell-tacos-Facebook-800x430.jpg", product_id: Product.all.sample.id },
  {url: "http://www.columbusalive.com/content/graphics/2015/01/07/ca-e-tacos-juniors.jpg", product_id: Product.all.sample.id },
  {url: "http://www.recipe.com/images/mexican-tacos-carnitas-R156435-ss.jpg", product_id: Product.all.sample.id },
  {url: "http://www.lataco.com/wp-content/uploads/5175671407_2b06b66626_b-600x399.jpg", product_id: Product.all.sample.id },
  {url: "http://www.dvo.com/newsletter/monthly/2013/september/images/navajo_tacos.jpg", product_id: Product.all.sample.id },
  {url: "http://www.gimmesomeoven.com/wp-content/uploads/2012/09/crispy-slow-cooker-carnitas-2.jpg", product_id: Product.all.sample.id}
])

CategorizedProduct.create!([
  {product_id: Product.find_by(name: "Exploding Taco").id,category_id: Category.find_by(name: "fancy").id},
  {product_id: Product.find_by(name: "Exploding Taco").id,category_id: Category.find_by(name: "combustable").id},
  {product_id: Product.find_by(name: "Cochinita Pibil").id,category_id: Category.find_by(name: "beef").id},
  {product_id: Product.find_by(name: "Al Pastor").id,category_id: Category.find_by(name: "shrimp").id},
  {product_id: Product.find_by(name: "Tacos de Asador").id,category_id: Category.find_by(name: "chicken").id},
  {product_id: Product.find_by(name: "Tacos de pescado").id,category_id: Category.find_by(name: "shrimp").id},
  ])
