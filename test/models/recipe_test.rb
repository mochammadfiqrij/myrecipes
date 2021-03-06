require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

    def setup
        @recipe = Recipe.new(name: "vegetables", description: "good vegetables")
    end

    
    test "recipe should be valid" do
        assert @recipe.valid?
    end

    test "name should be present" do
        @recipe.name = " "
        assert_not @recipe.valid?
    end

    test "description should be present" do
        @recipe.description = " "
        assert_not @recipe.valid?
    end

    test "description shouldn't be minimum char less than 5" do
        @recipe.description = "a" * 4
        assert_not @recipe.valid?
    end

    test "description shouldn't be maximum char more than 500" do
        @recipe.description = "a" * 501
        assert_not @recipe.valid?
    end

end