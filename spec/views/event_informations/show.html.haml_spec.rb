require 'rails_helper'

RSpec.describe "event_informations/show", type: :view do
  before(:each) do
    @event_information = assign(:event_information, EventInformation.create!(
      :name => "Name",
      :place => "Place"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Place/)
  end
end
