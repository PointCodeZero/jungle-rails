# Jungle

A mini e-commerce application built with Ruby on Rails 4.2 for purposes of learning Rails.

## Dependencies

- Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
- PostgreSQL 9.x
- [Stripe](https://stripe.com/ca)
- [bcrypt](https://github.com/codahale/bcrypt-ruby)
- [faker](https://github.com/stympy/faker)
- [Bootstrap 3](https://getbootstrap.com/docs/3.3/)
- SASS

## Images

!["Screenshot of main page"](https://github.com/PointCodeZero/jungle-rails/blob/master/docs/index.jpg)
!["Screenshot of product"](https://github.com/PointCodeZero/jungle-rails/blob/master/docs/product.jpg)
!["Screenshot of cart"](https://github.com/PointCodeZero/jungle-rails/blob/master/docs/cart.jpg)

## Functionality

- Users will be able to create an account or login with an existing one
- Product filters can be applied on the Categories dropdwon menu
- Non-logged in users will be able to navigate through products, but will not be able to access any other funcionality other than that
- Logged in users will be able to add products to the cart, specify quantity and checkout an order
- An order confirmation email will be sent to the users terminal to simulate real order (see Expected Usage section)
- If a product quantity reachs zero a SOLD OUT sign will be displayed on the index page
- Users will be able to see past reviews and ratings for a particular product
- Logged in users can write and delete their on review for an specific product
- Reviews will be displayed in reverse chronological order
- No user can access the admin page without authorization
- Admins will be able to create new categories and products

### Expected Usage

This program should be executed from the browser, in the following manner:

1. Start server at your command line `bin/rails server`
2. On your browser address bar type `http://localhost/3000/`
3. Sign-up or Login
4. Add products to your cart
5. Verify the quantity you want for each item and proceed to the checkout
6. Add your credit card information. Use Credit Card # `4111 1111 1111 1111` [testing refer here](https://stripe.com/docs/testing#cards)
7. Review your order
8. On your `terminal` look for your HTML confirmation order email
9. As long as you're logged in you can write reviews and delele then
