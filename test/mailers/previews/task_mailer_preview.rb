# Preview all emails at http://localhost:3000/rails/mailers/task_mailer
class TaskMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/task_mailer/notification
  def notification
    task = Task.last
    TaskMailer.with(client: task.job.user, task: task).notification
  end

end
