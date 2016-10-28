class GuessesController < ApplicationController
  def index

    g = Guess.new
    g.firstnum = params["f"]
    g.secondnum = params["s"]
    g.thirdnum = params["t"]
    g.save

    Guess.where( firstnum: nil ).delete_all
    Guess.where( secondnum: nil ).delete_all
    Guess.where( thirdnum: nil ).delete_all

    # i = Guess.where("firstnum = nil")
    # i.delete_all


    # @firstnum = params["f"]||""
    # @secondnum = params["s"]||""
    # @thirdnum = params["t"]||""

    @list = Guess.all
    #
    # if @firstnum < @secondnum && @secondnum < @thirdnum
    # @result = "Yes!"
    # else
    # @result = "No."
    # end

    render("guesses/index.html.erb")
  end
  def answer

    @user_answer = params["rule"]

    render("guesses/answer.html.erb")
  end
end
