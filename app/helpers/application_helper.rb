module ApplicationHelper

  def active_class_for(tab)
    string = "#{params[:controller]}-#{params[:action]}-#{tab}"

    case string
    when 'users-show-jobs' then 'active'
    when 'jobs-index-jobs' then 'active'
    when 'documents-index-documents' then 'active'
    when 'users-details-details' then 'active'
    end
  end
end
