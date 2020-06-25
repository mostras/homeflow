module ApplicationHelper

  def active_class_for(tab)
    string = "#{params[:controller]}-#{params[:action]}-#{tab}"

    case string
    when 'users-show-jobs' then 'active'
    when 'jobs-index-jobs' then 'active'
    when 'documents-index-documents' then 'active'
    when 'tutorials-index-tuto' then 'active'
    when 'users-details-details' then 'active'
    when 'users-index-liste' then 'active'
    when 'users-map-map' then 'active'

    end
  end
end
