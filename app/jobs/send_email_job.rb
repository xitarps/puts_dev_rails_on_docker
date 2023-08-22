class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "========== ENVIANDO EMAIL =========="
    # processamento de envio de email(muito pesado XD)
    sleep 10
    puts "========== EMAIL ENVIADO =========="
  end
end
