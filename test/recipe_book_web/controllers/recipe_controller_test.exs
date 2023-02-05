defmodule RecipeBookWeb.RecipeControllerTest do
  use RecipeBookWeb.ConnCase

  import RecipeBook.RecipesFixtures

  @create_attrs %{content: "some content", title: "some title"}
  @update_attrs %{content: "some updated content", title: "some updated title"}
  @invalid_attrs %{content: nil, title: nil}

  describe "index" do
    test "lists all recipes", %{conn: conn} do
      conn = get(conn, ~p"/recipes")
      assert html_response(conn, 200) =~ "Recipe List"
    end
  end
end
