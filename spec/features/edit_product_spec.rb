require 'rails_helper'

describe "the edit a product process" do

  product = Product.create!(name: 'Tony Hawk Pro Skater 1', price: rand(10...100), description: Faker::Lorem.sentence(5, false, 0).chop, photo: URI.parse(Faker::LoremPixel.image))

  User.create!(email: "test@gmail.com", password: "password", admin: true)

  it "edits a product" do

    # sign in as admin to edit product
    visit sign_in_path
    fill_in 'email', :with => 'test@gmail.com'
    fill_in 'password', :with => 'password'
    within(".waves-effect") do
      click_on 'Sign in'
    end

    visit edit_product_path(product)

    fill_in 'product_name', :with => 'Tony Hawk Pro Skater 2'
    click_on 'Submit'
    expect(page).to have_content 'Product successfully updated!'
  end

  it "gives error when no name is entered" do
    # sign in as admin to edit product
    visit sign_in_path
    fill_in 'email', :with => 'test@gmail.com'
    fill_in 'password', :with => 'password'
    within(".waves-effect") do
      click_on 'Sign in'
    end

    visit edit_product_path(product)
    fill_in 'product_name', :with => ''
    click_on 'Submit'
    expect(page).to have_content 'errors'
  end
end
