require 'rails_helper'

describe  "Viewing and individual user" do

	it "shows user details" do

	  user = User.create(user_attributes)

		sign_in(user)

	  visit user_url(user)

	 expect(page).to have_text(user.name)
     expect(page).to have_text(user.email)

  end
end
