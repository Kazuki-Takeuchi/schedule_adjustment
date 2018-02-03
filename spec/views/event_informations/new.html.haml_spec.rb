require 'rails_helper'

RSpec.describe "event_informations/new", type: :view do
  before(:each) do
    assign(:event_information, EventInformation.new(
      :name => "MyString",
      :place => "MyString"
    ))
  end

  it "renders new event_information form" do
    render

    assert_select "form[action=?][method=?]", event_informations_path, "post" do

      assert_select "input[name=?]", "event_information[name]"

      assert_select "input[name=?]", "event_information[place]"
    end
  end
end
