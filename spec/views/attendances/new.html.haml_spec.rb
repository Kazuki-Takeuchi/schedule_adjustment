require 'rails_helper'

RSpec.describe "attendances/new", type: :view do
  before(:each) do
    assign(:attendance, Attendance.new(
      :user_id => 1,
      :sub_event_information_id => 1
    ))
  end

  it "renders new attendance form" do
    render

    assert_select "form[action=?][method=?]", attendances_path, "post" do

      assert_select "input[name=?]", "attendance[user_id]"

      assert_select "input[name=?]", "attendance[sub_event_information_id]"
    end
  end
end
