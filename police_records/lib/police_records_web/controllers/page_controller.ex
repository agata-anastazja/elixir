defmodule PoliceRecordsWeb.PageController do
  use PoliceRecordsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
