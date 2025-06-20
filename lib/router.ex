defmodule SimpleHTTP.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    send_resp(conn, 200, "Welcome to my Elixir HTTP server!")
  end

  get "/hello/:name" do
    send_resp(conn, 200, "Hello, #{name}")
  end

  match _ do
    send_resp(conn, 404, "Oops! Not found.")
  end
end

