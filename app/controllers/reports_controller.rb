class ReportsController < ApplicationController
  before_action :authenticate_user!

  def create
    report = Report.create(
      project: project,
      reporter: current_user,
      reason: params[:reason]
    )

    render json: report, status: :ok
  end

  def project
    Project.find(params[:project_id])
  end
end
