require 'rails_helper'

RSpec.describe "event_informations/edit", type: :view do
  before(:each) do
    @event_information = assign(:event_information, EventInformation.create!(
      :name => "MyString",
      :place => "MyString"
    ))
  end

  it "renders the edit event_information form" do
    render

    assert_select "form[action=?][method=?]", event_information_path(@event_information), "post" do

      assert_select "input[name=?]", "event_information[name]"

      assert_select "input[name=?]", "event_information[place]"
    end
  end
end
