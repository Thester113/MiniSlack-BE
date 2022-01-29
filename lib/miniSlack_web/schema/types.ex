defmodule MiniSlackWeb.Schema.Types do
  use Absinthe.Schema.Notation

  alias MiniSlackWeb.Schema.Types

  import_types(Types.UserType)
end
