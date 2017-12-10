require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :latitude => 2.5,
        :longitude => 3.5,
        :name => "Name",
        :address => "Address",
        :title => "Title"
      ),
      Event.create!(
        :latitude => 2.5,
        :longitude => 3.5,
        :name => "Name",
        :address => "Address",
        :title => "Title"
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
