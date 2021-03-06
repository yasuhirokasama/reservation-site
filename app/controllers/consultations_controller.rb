# frozen_string_literal: true

class ConsultationsController < ApplicationController

  def index 
    redirect_to new_consultation_path
  end

  def new
    @consultation = Consultation.new
  end

  def create

    params[:consultation][:visit_at] = "#{params[:consultation][:visit_date]} #{params[:consultation][:visit_at]}"

    @consultation = Consultation.new(consultation_params)
    unless params[:consultation][:email] == params[:consultation][:email_confirmation]
      flash.now[:warning] = "メールアドレスと確認用メールアドレスが異なります"
      return render 'new'
    end

    if @consultation.save
      flash[:success] = '予約が完了しました。（入力されたメールアドレスに予約内容を送信しました。）<br>ご来院をお待ちしております。'
      redirect_to new_consultation_path
    else
      flash.now[:warning] = @consultation.errors.full_messages.join("<br>")
      render 'new'
    end
  end

  private

  def consultation_params
    params.require(:consultation).permit(:first_name, :last_name, :first_name_kana, :last_name_kana,
                                         :cell_number, :tel_number, :email, :birthday, :sex, :visit_type, :visit_at)
  end
end
