# frozen_string_literal: true

# used for Navigation for page sended to  since .env
Before do
  navigate_to($app_path)
end

After do
  $driver.manage.delete_all_cookies
  $driver.local_storage.clear
  sleep 1
end
