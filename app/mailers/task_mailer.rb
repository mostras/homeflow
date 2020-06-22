class TaskMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.task_mailer.new.subject
  #
  def notification
    @client = params[:client]
    @task = params[:task]

    mail to: @client.email, subject: "Votre chantier avance !"
  end
end
