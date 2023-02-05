defmodule RecipeBook.RecipesFixtures do
  @moduledoc """
  Test helpers for the `RecipeBook.Recipes` context.
  """

  @doc """
  Generate a recipe.
  """
  def recipe_fixture(attrs \\ %{}) do
    {:ok, recipe} =
      attrs
      |> Enum.into(%{
        content: "some content",
        title: "some title"
      })
      |> RecipeBook.Recipes.create_recipe()

    recipe
  end
end
