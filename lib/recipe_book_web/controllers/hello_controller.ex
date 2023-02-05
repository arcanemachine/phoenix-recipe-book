defmodule RecipeBookWeb.HelloController do
  use RecipeBookWeb, :controller

  def index(conn, _params) do
    render(conn, :index)
  end
end
