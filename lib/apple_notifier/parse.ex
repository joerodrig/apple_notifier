defmodule AppleNotifier.Parse do
  @doc """
  ## Examples
  - TODO
  """
  def item_available(body) do
    coming_soon_text = Floki.find(body, ".as-purchaseinfo-disclaimertext") |> Floki.text
    item_is_available = !String.contains?(coming_soon_text, "Coming")
    case item_is_available do
      false -> "Unavailable"
      true -> "Available"
    end
  end
end
