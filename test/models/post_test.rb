# == Schema Information
#
# Table name: posts
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :text
#  image       :string
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
