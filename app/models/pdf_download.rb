require 'render_anywhere'

class PdfDownload
  include RenderAnywhere

  def initialize(spray_program)
    @spray_plan = spray_program
  end

  def to_pdf
    kit = PDFKit.new(as_html)
    kit.to_file("tmp/#{filename}")
  end

  def filename
    "spray_plan#{spray_plan[:id]}.pdf"
  end

  def render_attributes
    {
      template: 'spray_plans/pdf',
      layout: 'pdf_download',
      locals: { spray_plan: spray_plan }
    }
  end

  private

  attr_reader :spray_plan

  def as_html
    ActionController::Base.new.render_to_string(template: 'spray_plans/pdf',
                                                layout: 'spray_plan_pdf',
                                                locals: { spray_plan: spray_plan })
  end
end
