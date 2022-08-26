class PdfDownloadsController < ApplicationController
  def show
    respond_to do |format|
      format.pdf { send_spray_plan_pdf }

      format.html { render_sample_html } if Rails.env.development?
    end
  end

  private

  def spray_plan
    SprayProgram.find(params[:spray_program_id])
  end

  def download
    PdfDownload.new(spray_plan)
  end

  def send_spray_plan_pdf
    send_file download.to_pdf, download_attributes
  end

  def render_sample_html
    render download.render_attributes
  end

  def download_attributes
    {
      filename: download.filename,
      type: 'application/pdf',
      disposition: 'inline'
    }
  end
end
