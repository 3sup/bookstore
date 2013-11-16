require 'spec_helper'

describe "Homepage" do
  describe "GET /books_pages" do
    it "Has the footer menu" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get 'books/index'
      expect(page).to have_content("Authors")
    end
  end
end
