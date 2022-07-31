# frozen_string_literal: true

# Top level doc
module ApplicationHelper
  # Method to build edit path for any model (used in shared edit/view/destroy dropdown)
  def edit_path(model)
    model_string = model.model_name.plural
    "/#{model_string}/#{model.id}/edit"
  end

  def flash_errors(model)
    flash.now[:alert] = model.errors.full_messages.to_sentence
  end

  def flash_notice(model, message)
    flash[:notice] = "#{model.model_name.singular} \'#{model.name}\' #{message}"
  end
end
