# PluralsightTweet

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `pluralsight_tweet` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:pluralsight_tweet, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/pluralsight_tweet](https://hexdocs.pm/pluralsight_tweet).



Conclusion

We started this module after exploring various features of Elixir. All we had was an empty project. As we saw in the last clip, we ended with an application that will send out a random tweet on a schedule. How did we get here? We started by reading a file and we performed several transformations on the data that came out. This is common. When you think about applications that you've written, at the end of the day, we're just receiving input, applying a transform, and returning the output. That's exactly what our read function did and it's easy to see that using the pipe functions. After we were able to read from our file, we needed a way to schedule a function call. To do this we searched hex for a package that we could use and we found Quantum. This allowed us to set up a schedule like a cron job so we scheduled reading a line from a file. Next we needed to be able to send that string out so we started by creating a Twitter application and then installing ExTwitter from hex. This allowed us access to the Twitter API. We tested this by manually sending individual tweets and verified that our configuration and keys were correct. Once we got to that point we saw how supervision worked in Elixir. We did this by manually sending a tweet and then killing the process, only to see it respond with a new PID. We then modified our schedule to leverage this supervised TweetServer to send out a new tweet every minute. If something were to happen in between tweets, we wouldn't need to worry as the supervisor would restart our server for us. So in the past few minutes we were able to get a functioning application up and running. In the next module we're going to revisit our application, but from a slightly different perspective. We're going to look at the testing support in Elixir. So we'll write some tests against our application to make sure it does what we want it to do.