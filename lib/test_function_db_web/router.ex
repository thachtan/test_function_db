defmodule TestFunctionDbWeb.Router do
  use TestFunctionDbWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", TestFunctionDbWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/add", PageController, :add
    post "/add", PageController, :sum
  end

  # Other scopes may use custom stacks.
  # scope "/api", TestFunctionDbWeb do
  #   pipe_through :api
  # end
end
