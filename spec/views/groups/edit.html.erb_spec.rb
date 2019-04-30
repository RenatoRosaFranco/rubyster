require 'rails_helper'

RSpec.describe "groups/edit", type: :view do
  before(:each) do
    @group = assign(:group, Group.create!(
      :name => "MyString",
      :email => "MyString",
      :website => "MyString",
      :address => "MyString",
      :region => "MyString",
      :contry => "MyString"
    ))
  end

  it "renders the edit group form" do
    render

    assert_select "form[action=?][method=?]", group_path(@group), "post" do

      assert_select "input[name=?]", "group[name]"

      assert_select "input[name=?]", "group[email]"

      assert_select "input[name=?]", "group[website]"

      assert_select "input[name=?]", "group[address]"

      assert_select "input[name=?]", "group[region]"

      assert_select "input[name=?]", "group[contry]"
    end
  end
end
