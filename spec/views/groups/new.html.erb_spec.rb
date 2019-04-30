require 'rails_helper'

RSpec.describe "groups/new", type: :view do
  before(:each) do
    assign(:group, Group.new(
      :name => "MyString",
      :email => "MyString",
      :website => "MyString",
      :address => "MyString",
      :region => "MyString",
      :contry => "MyString"
    ))
  end

  it "renders new group form" do
    render

    assert_select "form[action=?][method=?]", groups_path, "post" do

      assert_select "input[name=?]", "group[name]"

      assert_select "input[name=?]", "group[email]"

      assert_select "input[name=?]", "group[website]"

      assert_select "input[name=?]", "group[address]"

      assert_select "input[name=?]", "group[region]"

      assert_select "input[name=?]", "group[contry]"
    end
  end
end
