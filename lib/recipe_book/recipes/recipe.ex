defmodule RecipeBook.Recipes.Recipe do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset

  schema "recipes" do
    field :title, :string
    field :content, :string

    timestamps()
  end

  @doc false
  def changeset(recipe, attrs) do
    recipe
    |> cast(attrs, [:title, :content])
    |> validate_required([:title, :content])
  end
end
