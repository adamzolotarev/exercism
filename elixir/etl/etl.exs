defmodule ETL do
  @doc """
  Transform an index into an inverted index.

  ## Examples

  iex> ETL.transform(%{"a" => ["ABILITY", "AARDVARK"], "b" => ["BALLAST", "BEAUTY"]})
  %{"ability" => "a", "aardvark" => "a", "ballast" => "b", "beauty" =>"b"}
  """
  @spec transform(map) :: map
  def transform(input) do
   keys = Map.keys(input)
   iterate_over_keys(%{}, keys, input)	
  end

  defp iterate_over_keys(newMap, [], _) do
   newMap
  end

  defp iterate_over_keys(newMap, [h|t], oldMap) do
   oldMap[h]
   |> iterate_over_values(h, newMap)
   |> iterate_over_keys(t, oldMap)
  end

  defp iterate_over_values([], _, newMap) do
   newMap
  end  
  defp iterate_over_values([h|t], old_key, newMap) do
   newMap = Map.update(newMap, String.downcase(h), old_key, &(&1))
   iterate_over_values(t, old_key, newMap)
  end
end
