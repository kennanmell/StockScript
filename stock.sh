#!/bin/sh

if [ "$#" -ne 1 ]; then 
  echo "usage: ./stock <ticker>"
  exit 1
fi

ticker=$1

open -na "Google Chrome" --args --new-window "https://finviz.com/quote.ashx?t=${ticker}"

# The remaining tabs should be opened in the window created above.
# Waiting 3 seconds leaves enough time for the window to finish opening,
# although this solution is a bit hacky.
sleep 3

open http://performance.morningstar.com/stock/performance-return.action?t=${ticker}
open https://www.dividendchannel.com/drip-returns-calculator/

open https://seekingalpha.com/symbol/${ticker}
open https://reddit.com/r/wallstreetbets/search?q=${ticker}+flair%3ADD&restrict_sr=on&sort=new&t=all
open https://www.fool.com/premium/company/${ticker}
open https://robinhood.com/stocks/${ticker}
open https://www.nasdaq.com/market-activity/stocks/${ticker}/dividend-history

open https://last10k.com/sec-filings/${ticker}
open https://seekingalpha.com/symbol/${ticker}/earnings/transcripts
open https://en.wikipedia.org/wiki/${ticker}

open https://www.zacks.com/stock/chart/${ticker}/fundamental/pe-ratio-ttm
open https://www.zacks.com/stock/chart/${ticker}/fundamental/peg-ratio-ttm
open https://www.zacks.com/stock/chart/${ticker}/fundamental/price-book-value

open https://finviz.com/screener.ashx?v=121&t=${ticker}
open https://stockcharts.com/h-sc/ui?s=${ticker}
open https://www.tradingview.com/symbols/${ticker}/
open https://www.barchart.com/stocks/quotes/${ticker}/cheat-sheet

