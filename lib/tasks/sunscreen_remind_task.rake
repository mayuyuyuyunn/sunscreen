namespace :sunscreen_remind_task do
  desc "日焼け止めの塗り直し通知を送る"
  task send_remind_line: :environment do
    liff_id = ENV['LIFF_ID']
    check_type = ['炎天下でのレジャー・マリンスポーツなど', '非常に強い紫外線の場所に行く・紫外線に過敏な方']
    schedules = Schedule.schedule_at_today
    time = Time.now
    schedules.each do |schedule|
      if check_type.include?(schedule.odekake_type.name)
        if (time.hour == schedule.leave_home_time.hour + 2) || (time.hour == schedule.leave_home_time.hour + 4) || (time.hour == schedule.leave_home_time.hour + 6) || (time.hour == schedule.leave_home_time.hour + 8) || (time.hour == schedule.leave_home_time.hour + 10)
          puts '時間だよ(2)'
        end
      else
        if (time.hour == schedule.leave_home_time.hour + 3) || (time.hour == schedule.leave_home_time.hour + 6) || (time.hour == schedule.leave_home_time.hour + 9)
          puts '時間だよ(3)'
        end
      end
    end
  end
end
