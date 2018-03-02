require 'rails_helper'

RSpec.describe "habits/edit", type: :view do
  before(:each) do
    @habit = assign(:habit, Habit.create!(
      :name => "MyString",
      :interval => 1
    ))
  end

  it "renders the edit habit form" do
    render

    assert_select "form[action=?][method=?]", habit_path(@habit), "post" do

      assert_select "input[name=?]", "habit[name]"

      assert_select "input[name=?]", "habit[interval]"
    end
  end
end
