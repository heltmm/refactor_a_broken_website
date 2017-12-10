describe "the edit a product process" do
  it "edits a product" do

    User.Create!(email: "test@gmail.com", password: "password", admin: true)
    # sign in as admin to add product
    visit new_user_session_path
    fill_in 'Email', :with => 'test@gmail.com'
    fill_in 'Password', :with => 'password'
    within(".actions") do
      click_on 'Log in'
    end


    fill_in 'Name', :with => 'Home stuff'
    click_on 'Create List'
    expect(page).to have_content 'Lists'
  end

  it "gives error when no name is entered" do
    visit new_list_path
    click_on 'Create List'
    expect(page).to have_content 'errors'
  end
end
