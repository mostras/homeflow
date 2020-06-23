class TaskMailer < ApplicationMailer
  def notification
    @client = params[:client]
    @task = params[:task]

    mail to: @client.email, subject: "Votre chantier avance !"
  end

  def work_paused
    @client = params[:client]

    mail to: @client.email, subject: @client.in_progress? ? "Votre chantier reprend !" : "Nous revenons très vite !"
  end

  def job_done
    @client = params[:client]
    @job = params[:job]

    mail to: @client.email, subject: "L'étape #{@job.name} est terminée !"
  end
end
