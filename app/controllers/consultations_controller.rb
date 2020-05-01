class ConsultationsController < ApplicationController

  def new
    @consultation = Consultation.new
  end

  def create
    params[:consultation][:visit_at] = "#{params[:consultation][:'visit_date']} #{params[:consultation][:visit_at]}" # 例: 2020-04-03 9:00

    @consultation = Consultation.new(consultation_params)
    if @consultation.save
      redirect_to new_consultation_path
    else
      render 'new'
    end
  end

  private

  def consultation_params
    params.require(:consultation).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :cell_number, :tel_number, :email, :birthday, :sex, :visit_type, :visit_at)
  end
end
