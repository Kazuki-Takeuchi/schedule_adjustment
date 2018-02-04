require 'rails_helper'

RSpec.describe "sub_event_informations/index", type: :view do
  before(:each) do
    assign(:sub_event_informations, [
      SubEventInformation.create!(
        :name => "Name",
        :place => "Place",
        :url => "Url",
        :price => 2
      ),
      SubEventInformation.create!(
        :name => "Name",
        :place => "Place",
        :url => "Url",
        :price => 2
      )
    ])
  end

  it "renders a list of sub_event_informations" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Place".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
