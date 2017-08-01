defmodule PluralsightTweet.Scheduler do
      import IO, only: [puts: 1]

    def schedule_file(schedule,file) do
        Quantum.add_job(schedule, fn -> 
          PluralsightTweet.FileReader.get_strings_to_tweet(file)
          |> PluralsightTweet.TweetServer.tweet 
         end)
    end
end