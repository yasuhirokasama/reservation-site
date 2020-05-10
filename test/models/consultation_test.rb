# == Schema Information
#
# Table name: consultations
#
#  id              :bigint           not null, primary key
#  birthday        :date
#  cell_number     :string(255)
#  email           :string(255)
#  first_name      :string(255)      not null
#  first_name_kana :string(255)      not null
#  last_name       :string(255)      not null
#  last_name_kana  :string(255)      not null
#  sex             :integer
#  tel_number      :string(255)
#  visit_at        :datetime         not null
#  visit_type      :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_consultations_on_visit_at                 (visit_at)
#  index_consultations_on_visit_at_and_visit_type  (visit_at,visit_type)
#  index_consultations_on_visit_type               (visit_type)
#
require 'test_helper'

class ConsultationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
