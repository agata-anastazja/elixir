# PoliceRecords

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Assumptions

Writing this I made a set of assumptions:
  - I can store data locally (otherwise I would go for something like [`this`](https://blog.agilion.com/decoding-a-hosted-csv-file-in-elixir-7aa0bb3f7468))
