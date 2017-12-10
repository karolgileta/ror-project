require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :latitude => 1.5,
      :longitude => 1.5,
      :name => "MyString",
      :address => "MyString",
      :title => "MyString"
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_latitude[name=?]", "event[latitude]"

      assert_select "input#event_longitude[name=?]", "event[longitude]"

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "input#event_address[name=?]", "event[address]"

      assert_select "input#event_title[name=?]", "event[title]"
    end
  end
end
