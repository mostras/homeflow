# Preview all emails at http://localhost:3000/rails/mailers/task_mailer
class TaskMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/task_mailer/notification
  def notification
    task = Task.last

    TaskMailer.with(client: task.job.user, task: task).notification
  end

  def work_paused_stop
    client = User.last
    client.update!(in_progress: false)

    TaskMailer.with(client: client).work_paused
  end

  def work_paused_go
    client = User.last
    client.update!(in_progress: true)

    TaskMailer.with(client: client).work_paused
  end

  def job_done
    client = User.last
    job = client.jobs.first
    job.update!(completed: true)

    TaskMailer.with(client: client, job: job).job_done
  end

end
