#!/bin/bash
# Render HTML mockups to PNG via headless Chrome
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
DIR="$(cd "$(dirname "$0")" && pwd)"
OUT="$DIR/.."

render() {
  local html="$1"
  local png="$2"
  local w="$3"
  local h="$4"
  "$CHROME" --headless=new --disable-gpu --hide-scrollbars \
    --screenshot="$OUT/$png" \
    --window-size="$w,$h" \
    "file://$DIR/$html" 2>/dev/null
  echo "Created $OUT/$png"
}

render ace-framework.html hero-ace-framework.png 1600 900
render response-screen.html knowledge-agent-response.png 1400 880
render golden-dataset.html golden-dataset-sample.png 1400 720
render evaluation-dashboard.html evaluation-dashboard.png 1400 820
render evals-product-specs.html evals-are-product-specs.png 1200 900

echo "Done."
