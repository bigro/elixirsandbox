defmodule Elixirsandbox.BlogsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Elixirsandbox.Blogs` context.
  """

  @doc """
  Generate a article.
  """
  def article_fixture(attrs \\ %{}) do
    {:ok, article} =
      attrs
      |> Enum.into(%{
        body: "some body",
        title: "some title"
      })
      |> Elixirsandbox.Blogs.create_article()

    article
  end

  @doc """
  Generate a comment.
  """
  def comment_fixture(attrs \\ %{}) do
    {:ok, comment} =
      attrs
      |> Enum.into(%{
        body: "some body",
        article_id: Map.get(article_fixture(), :id)
      })
      |> Elixirsandbox.Blogs.create_comment()

    comment
  end
end
