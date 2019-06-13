# frozen_string_literal: true

After do
  $driver.manage.delete_all_cookies
  $driver.local_storage.clear
  sleep 1
end

Before do
  navigate_to($app_path)
end
