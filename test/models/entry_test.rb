require "test_helper"

class EntryTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do
    entry = Entry.new(meal_type: "Breakfast", calories: 500, proteins: 20, carbohydrates: 50, fats: 25)
    assert entry.save
  end

  test "should not save entry without meal_type" do
    entry = Entry.new(calories: 500, proteins: 20, carbohydrates: 50, fats: 25)
    assert_not entry.save
  end

  test "should not save entry without calories" do
    entry = Entry.new(meal_type: "Breakfast", proteins: 20, carbohydrates: 50, fats: 25)
    assert_not entry.save
  end

  test "should not save entry without proteins" do
    entry = Entry.new(meal_type: "Breakfast", calories: 500, carbohydrates: 50, fats: 25)
    assert_not entry.save
  end

  test "should not save entry without carbohydrates" do
    entry  = Entry.new(meal_type: "Breakfast", calories: 500, proteins: 20, fats: 25)
    assert_not entry.save
  end

  test "should not save entry without fats" do
    entry = Entry.new(meal_type: "Breakfast", calories: 500, proteins: 20, carbohydrates: 50)
    assert_not entry.save
  end

  test "should delete entry" do
    entry = Entry.create(meal_type: "Breakfast", calories: 500, proteins: 20, carbohydrates: 50, fats: 25)
    assert_difference('Entry.count', -1) do
      entry.destroy
    end
  end
end
