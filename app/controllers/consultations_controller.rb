class ConsultationsController < ApplicationController

  def new
    @consultation = Consultation.new
  end

  def create
    params[:consultation][:visit_at] = "#{params[:consultation][:visit_date]} #{params[:consultation][:visit_at]}"

    @consultation = Consultation.new(consultation_params(params))
    if @consultation.save
      redirect_to new_consultation_path
    else
      render 'new'
    end
  end

  private

  def consultation_params(params)
    params.require(:consultation).permit(:name, :cell_number, :tel_number, :email, :birthday, :sex, :visit_type, :visit_at)
  end
end
