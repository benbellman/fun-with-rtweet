library(rtweet)

## .Renviron text file must be in home directory
## check with path.expand("~")
## Simply add values:
# TWITTER_APP=app
# TWITTER_CONSUMER_KEY=key1
# TWITTER_CONSUMER_SECRET=key2

create_token(
  app = Sys.getenv("TWITTER_APP"),
  consumer_key = Sys.getenv("TWITTER_CONSUMER_KEY"),
  consumer_secret = Sys.getenv("TWITTER_CONSUMER_SECRET")
) -> twitter_token

saveRDS(twitter_token, "~/.rtweet.rds")
