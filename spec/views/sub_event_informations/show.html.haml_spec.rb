require 'rails_helper'

RSpec.describe "sub_event_informations/show", type: :view do
  before(:each) do
    @sub_event_information = assign(:sub_event_information, SubEventInformation.create!(
      :name => "Name",
      :place => "Place",
      :url => "Url",
      :price => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Place/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/2/)
  end
end
