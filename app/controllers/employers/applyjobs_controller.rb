class Employers::ApplyjobsController < ApplicationController
  def index
    @job = Job.find params[:job_id]
    @applyjobs = @job.applyjobs.page params[:page]
  end

  def edit
    @applyjob = Applyjob.find params[:id]
    if @applyjob.apply_status == "Waiting" && params[:check1]
      @applyjob.update_attributes apply_status: 2
    elsif @applyjob.apply_status == "Interview"
      @applyjob.update_attributes apply_status: 2
    else
      @applyjob.update_attributes apply_status: 1

    end
      flash[:success] = t("index.Request is accepted")
      redirect_to employers_job_applyjobs_path(@applyjob.job.id)
  end

  def destroy
    @applyjob = Applyjob.find params[:id]
    @applyjob.destroy
    flash[:success] = t("aj.profile updated")
    redirect_to employers_job_applyjobs_path
  end
end


# 0 -> 1
# 0,true ->2
# 1->2
# 2->1
