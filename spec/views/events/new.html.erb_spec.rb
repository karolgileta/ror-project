require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      :latitude => 1.5,
      :longitude => 1.5,
      :name => "MyString",
      :address => "MyString",
      :title => "MyString"
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_latitude[name=?]", "event[latitude]"

      assert_select "input#event_longitude[name=?]", "event[longitude]"

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "input#event_address[name=?]", "event[address]"

      assert_select "input#event_title[name=?]", "event[title]"
    end
  end
end
