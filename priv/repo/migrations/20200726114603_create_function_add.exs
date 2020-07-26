defmodule TestFunctionDb.Repo.Migrations.CreateFunctionAdd do
  use Ecto.Migration

  def change do
    execute """
    CREATE FUNCTION add(integer, integer) RETURNS integer
    AS 'select $1 + $2;'
    LANGUAGE SQL
    IMMUTABLE
    RETURNS NULL ON NULL INPUT;
    """
  end
end
