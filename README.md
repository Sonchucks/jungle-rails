# Jungle

A mini e-commerce application built with Rails 4.2.

## Setup

1. Clone or Download
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Create `config/application.yml` based on `config/application.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create `.env` file based on `.env.example`
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## The Application

### Home Page

![Initial View](https://github.com/Sonchucks/jungle-rails/blob/cleanup/docs/initial-view.png)

As a guest

![View when logged in and as admin](https://github.com/Sonchucks/jungle-rails/blob/cleanup/docs/logged-in-view.png)

As a registered user/admin

### Admin Features

![Admin Categories](https://github.com/Sonchucks/jungle-rails/blob/cleanup/docs/admin-categories.png)

![Admin New Category](https://github.com/Sonchucks/jungle-rails/blob/cleanup/docs/admin-new-category.png)

![Admin Products](https://github.com/Sonchucks/jungle-rails/blob/cleanup/docs/admin-products.png)

![Admin New Product](https://github.com/Sonchucks/jungle-rails/blob/cleanup/docs/admin-new-product.png)

### Login Page

![Login](https://github.com/Sonchucks/jungle-rails/blob/cleanup/docs/login-screen.png)

### Registration Page

![Registration](https://github.com/Sonchucks/jungle-rails/blob/cleanup/docs/registration-screen.png)

### Product Page

![Product Sold Out Badge](https://github.com/Sonchucks/jungle-rails/blob/cleanup/docs/sold-out-badge.png)

When a product is sold out, it'll display this "SOLD OUT!" badge in the top left corner in the main page and the add button will be disabled.

![Product Page as Visitor](https://github.com/Sonchucks/jungle-rails/blob/cleanup/docs/product-page-visitor.png)

As a visitor, you can see all the product details along with it's overall rating (if there is one) and see all of the reviews for that specific product.

![Product Page as User](https://github.com/Sonchucks/jungle-rails/blob/cleanup/docs/product-page-user.png)

As a user you can create reviews as well as delete any reviews you've created. Other users cannot delete your reviews.

![View Products by Category](https://github.com/Sonchucks/jungle-rails/blob/cleanup/docs/view-by-category.png)

Can view products by their category.


### Checking Out
![Empty Cart](https://github.com/Sonchucks/jungle-rails/blob/cleanup/docs/cart-no-items.png)

![Cart as Visitor](https://github.com/Sonchucks/jungle-rails/blob/cleanup/docs/cart-no-user.png)

![Cart as User](https://github.com/Sonchucks/jungle-rails/blob/cleanup/docs/cart.png)

![Successful Checkout](https://github.com/Sonchucks/jungle-rails/blob/cleanup/docs/cart-success.png)

![Email Order Details](https://github.com/Sonchucks/jungle-rails/blob/cleanup/docs/email-order-details.png)