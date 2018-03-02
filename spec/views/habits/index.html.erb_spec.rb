require 'rails_helper'

RSpec.describe "habits/index", type: :view do
  before(:each) do
    assign(:habits, [
      Habit.create!(
        :name => "Name",
        :interval => 2
      ),
      Habit.create!(
        :name => "Name",
        :interval => 2
      )
    ])
  end

  it "renders a list of habits" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
