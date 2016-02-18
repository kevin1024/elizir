defmodule SlackRtm do
  use Slack

  def handle_connect(slack, state) do
    IO.puts "Connected as #{slack.me.name}"
    {:ok, state}
  end

  def filter_message(text) do
    Regex.match?(~r/^hello/, text)
  end

  def handle_message(message = %{type: "message", text: text}, slack, state)
  when filter_message(text) do
    response = Eliza.chat(message.text)
    send_message(response, message.channel, slack)
    {:ok, state }
  end

  def handle_message(_message, _slack, state) do
    {:ok, state}
  end
end
