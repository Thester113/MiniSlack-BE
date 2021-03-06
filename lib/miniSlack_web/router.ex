defmodule MiniSlackWeb.Router do
  use MiniSlackWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward("/graphql", Absinthe.Plug, schema: MiniSlackWeb.Schema)

    if Mix.env() == :dev do
      forward("/graphiql", Absinthe.Plug.GraphiQL, schema: MiniSlackWeb.Schema)
    end
  end
end
