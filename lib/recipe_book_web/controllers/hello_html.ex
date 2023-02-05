defmodule RecipeBookWeb.HelloHTML do
  use RecipeBookWeb, :html

  # embed_templates "hello_html/*"

  def index(assigns) do
    ~H"""
    Hello!!
    """
  end
end
