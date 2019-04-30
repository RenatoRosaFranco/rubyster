require 'rails_helper'

RSpec.describe "groups/index", type: :view do
  before(:each) do
    assign(:groups, [
      Group.create!(
        :name => "Name",
        :email => "Email",
        :website => "Website",
        :address => "Address",
        :region => "Region",
        :contry => "Contry"
      ),
      Group.create!(
        :name => "Name",
        :email => "Email",
        :website => "Website",
        :address => "Address",
        :region => "Region",
        :contry => "Contry"
      )
    ])
  end

  it "renders a list of groups" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Region".to_s, :count => 2
    assert_select "tr>td", :text => "Contry".to_s, :count => 2
  end
end
