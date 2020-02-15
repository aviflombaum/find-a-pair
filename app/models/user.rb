class User < ApplicationRecord
  has_many :pair_requests, :class_name => "Pair", :foreign_key => "requestor_user_id"
  has_many :pair_responses, :class_name => "Pair", :foreign_key => "respondor_user_id"

end
