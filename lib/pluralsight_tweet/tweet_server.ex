defmodule PluralsightTweet.TweetServer do
    use GenServer

    #iniciar o server
    def start_link() do
        GenServer.start_link(__MODULE__, :ok, name: :tweet_server)
    end

    def init(:ok) do
        {:ok, %{} }
    end

    #enviar o tweet (assincrona)
    def handle_cast({:tweet, tweet}, _) do
        PluralsightTweet.Tweet.send(tweet)        
         {:noreply, %{}}
    end

    #permite ligar para o server  (síncrono) 
    def tweet(tweet) do
        GenServer.cast(:tweet_server, {:tweet, tweet})
    end

end