class WelcomeController < ApplicationController

  def index
    
  end

  def gs_scheduler
    gurl = 'https://www.georgestreetphoto.com/scheduler/appointment'
    gdata = {
             venue_latitude: '34.020922',
             venue_longitude:'-118.290117'
           }
    check_status(gurl, gdata)
    redirect_to welcome_index_path  
  end

  def gs_price
    gurl = "https://www.georgestreetphoto.com/?ACT=316"
    gdata = {
             first_name: 'ashok',
             last_name:'kumar',
             email: 'akumar@orionphotogroup.com',
             phone: '9632474345',
             zip: '51571',
             wedding_day: '02/21/2022',
             wedding_location: 'Carlsbad, CA, USA'
           }
    check_status(gurl, gdata) 
    redirect_to welcome_index_path
  end

  def ll_users
    gurl = 'https://www.lilyandlime.com/portal/users'
    gdata = {
      authenticity_token: "7bpbqBys1jdsfsdfsdfdsffWBAs7pCMQKCOLARF/4x7/gltxq2pmS7824RozhOQKC7ZAeLSfPd3lUi/e4MUZq8adb9GSdBB27g==", 
      user: { last_name: "", 
              phone_number: "", 
              wedding_type: "one-day", 
              wedding_attributes: {city_id: "81301", 
              wedding_date: "May 12, 2022"},
              first_name: "4dasdasdd", 
              email: "testinfagggsds@example.com"}, 
              wedding_city_name: "New York, NY" }
    check_status(gurl, gdata) 
    redirect_to welcome_index_path  
  end

end
