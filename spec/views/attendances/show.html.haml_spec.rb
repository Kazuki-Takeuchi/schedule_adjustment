require 'rails_helper'

RSpec.describe "attendances/show", type: :view do
  before(:each) do
    @attendance = assign(:attendance, Attendance.create!(
      :user_id => 2,
      :sub_event_information_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end