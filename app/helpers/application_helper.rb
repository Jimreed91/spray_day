# frozen_string_literal: true

# Top level doc
module ApplicationHelper
  # Method to build edit path for any model (used in shared edit/view/destroy dropdown)
  def edit_path(model)
    model_string = model.model_name.human.downcase.pluralize
    "/#{model_string}/#{model.id}/edit"
  end
end
