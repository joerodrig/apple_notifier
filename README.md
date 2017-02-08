# AppleNotifier

Install Dependencies:
  * Install dependencies with `mix deps.get`

Run the script:
  * `mix check_apple_store -url <APPLE_PRODUCT_URL>`

Continuously run script:
  * `while sleep <SECONDS_TO_WAIT>; do mix check_apple_store -url <APPLE_PRODUCT_URL>; done`

The script currently just prints to console saying whether or not the item
being searched for is available.
