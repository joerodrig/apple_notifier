defmodule Mix.Tasks.CheckAppleStore do
  @shortdoc "Checks the Apple store for item availability"

  @moduledoc """

  mix check_apple_store -url http://www.apple.com/shop/product/MLYF2LL/A/beatsx-earphones-white
  """
  use Mix.Task

  def run(args) do
    {opts, _, _} = OptionParser.parse(args, aliases: [url: :url])
    AppleNotifier.Search.check_apple_store(%{url: opts[:url]})
  end
end
