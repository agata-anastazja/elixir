defmodule PoliceRecordsWeb.Router do
  use PoliceRecordsWeb, :router

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

  scope "/", PoliceRecordsWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    
    resources "/users", UserController
    get "/all_records", AllRecordsController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", PoliceRecordsWeb do
  #   pipe_through :api
  # end
end
