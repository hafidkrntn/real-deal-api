defmodule RealDealApiWeb.Router do
  use RealDealApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end
  # template to link/api
  scope "/api", RealDealApiWeb do
    pipe_through :api
     
  # input api in here
  get "/", DefaultController, :index
  end
end
