defmodule RecipeBookWeb.RecipeController do
  use RecipeBookWeb, :controller

  alias RecipeBook.Recipes

  def index(conn, _params) do
    recipes = Recipes.list_recipes()
    render(conn, :index, recipes: recipes)
  end
end
