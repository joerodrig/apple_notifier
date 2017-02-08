defmodule AppleNotifier.PageController do
  use AppleNotifier.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
