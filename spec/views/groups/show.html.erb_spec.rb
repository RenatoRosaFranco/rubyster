require 'rails_helper'

RSpec.describe "groups/show", type: :view do
  before(:each) do
    @group = assign(:group, Group.create!(
      :name => "Name",
      :email => "Email",
      :website => "Website",
      :address => "Address",
      :region => "Region",
      :contry => "Contry"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Region/)
    expect(rendered).to match(/Contry/)
  end
end
