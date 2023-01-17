# == Schema Information
#
# Table name: schedules
#
#  id              :bigint           not null, primary key
#  leave_home_time :datetime         not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  odekake_type_id :bigint           not null
#  user_id         :bigint           not null
#
# Indexes
#
#  index_schedules_on_odekake_type_id  (odekake_type_id)
#  index_schedules_on_user_id          (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (odekake_type_id => odekake_types.id)
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :schedule do
    user { nil }
    odekake_type { nil }
    leave_home_time { "2023-01-15 17:49:32" }
  end
end
