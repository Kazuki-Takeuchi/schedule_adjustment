require 'rails_helper'

RSpec.describe "event_informations/index", type: :view do
  before(:each) do
    assign(:event_informations, [
      EventInformation.create!(
        :name => "Name",
        :place => "Place"
      ),
      EventInformation.create!(
        :name => "Name",
        :place => "Place"
      )
    ])
  end

  it "renders a list of event_informations" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Place".to_s, :count => 2
  end
end
