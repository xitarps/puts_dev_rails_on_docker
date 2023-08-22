class HomeController < ApplicationController
  def index
    puts "------------------------ Home Controller chamando jobs"
    (1..20).to_a.each do |number|
      # sleep 1
      SendEmailJob.perform_later
    end
    puts "------------------------ Home Controller terminou de chamar jobs"
    @message = "Carregado"
  end
end