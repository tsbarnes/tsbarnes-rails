# frozen_string_literal: true

class ResumesController < ApplicationController
  before_action :set_resume, only: [:show]

  # GET /resumes
  # GET /resumes.json
  def index
    @resumes = Resume.all
  end

  # GET /resumes/1
  # GET /resumes/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: {},
               layout: 'pdf'
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_resume
    @resume = current_resume
  end
end
