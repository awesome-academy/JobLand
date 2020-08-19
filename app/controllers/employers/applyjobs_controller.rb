class Employers::ApplyjobsController < ApplicationController
  def index
    @job = Job.find params[:job_id]
    @applyjobs = @job.applyjobs.page params[:page]
  end

  def edit
    @job = Job.find params[:job_id]
    @applyjob = Applyjob.find params[:id]
    if @applyjob.apply_status == "Waiting" && params[:check1]
      @applyjob.update_attributes apply_status: 2
    elsif @applyjob.apply_status == "Interview"
      @applyjob.update_attributes apply_status: 2
    else
      @applyjob.update_attributes apply_status: 1

    end
      redirect_to employers_job_path(@job.id)
  end

  def destroy
    @applyjob = Applyjob.find params[:id]
    @applyjob.destroy
    flash[:success] = t("aj.profile updated")
    redirect_to employers_job_applyjobs_path
  end
end
