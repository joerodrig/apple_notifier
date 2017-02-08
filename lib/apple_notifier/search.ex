defmodule AppleNotifier.Search do
  @doc """
  ## Examples
  """
  def check_apple_store(%{:url => url}) do
    url |> determine_item_availability
  end

  defp determine_item_availability(url) do
    IO.puts "Determining item availability from: #{url}"
    item_availability = url
                        |> AppleNotifier.Request.body
                        |> AppleNotifier.Parse.item_available
    IO.puts item_availability
  end
end
