# Ecommerce Website

## Refactor of an existing ecommerce website

### User Stories Added
* Users should be able to add products to their shopping cart from the index page with AJAX. The item should be added to the shopping cart and the number of items in the cart (shown in the navbar) should update.

* Users should be able to click on a product and show/hide the product detail using AJAX. The product detail should include an image (either Paperclip or an image link), the description, and any other fields you choose to add.

* Users should be able to remove items from the shopping cart without a page reload. The "delete" link should result in the item being removed from the shopping cart and the total price being updated.

### Stretch Goals Users stories added
* Ensure that users can't order a negative number of items.
* Add flash messages for signing up, signing in and signing out.
* Add product update and delete functionality for admins.
* Add admin flash messages for adding, updating and deleting products.
* Add Paperclip for product image upload.
* Allow other than whole dollar amounts for admin product creation (for instance, 3.99).
* Add product validations.
* Add admin links to navbar so admins can easily add, update and delete products.

## Setup and Installation

* `$ git clone https://github.com/heltmm/refactor_a_broken_website.git`
* `$ cd refactor_a_broken_website`
* `$ bundle install`
* `$ rails db:setup`
* `$ rails s`
* in browser go to http://localhost:3000/

### License

*This software is licensed under the MIT license.*

Copyright (c) 2016 **_Mark Helt_**
