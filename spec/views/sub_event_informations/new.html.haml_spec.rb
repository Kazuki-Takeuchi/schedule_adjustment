require 'rails_helper'

RSpec.describe "sub_event_informations/new", type: :view do
  before(:each) do
    assign(:sub_event_information, SubEventInformation.new(
      :name => "MyString",
      :place => "MyString",
      :url => "MyString",
      :price => 1
    ))
  end

  it "renders new sub_event_information form" do
    render

    assert_select "form[action=?][method=?]", sub_event_informations_path, "post" do

      assert_select "input[name=?]", "sub_event_information[name]"

      assert_select "input[name=?]", "sub_event_information[place]"

      assert_select "input[name=?]", "sub_event_information[url]"

      assert_select "input[name=?]", "sub_event_information[price]"
    end
  end
end
