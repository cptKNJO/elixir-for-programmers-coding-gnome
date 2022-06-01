defmodule B1Web.HangmanController do
  use B1Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def new(conn, _params) do
    game = Hangman.new_game()
    tally = Hangman.tally(game)

    conn
    |> put_session(:game, game)
    |> render("new.html", tally: tally)
  end

  def update(conn, %{"make_move" => make_move}) do
    tally =
      conn
      |> get_session(:game)
      |> Hangman.make_move(make_move["guess"])

    put_in(conn.params["make_move"]["guess"], "")
    |> render("new.html", tally: tally)
  end
end
