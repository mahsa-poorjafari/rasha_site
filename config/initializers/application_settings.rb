# encoding: UTF-8
if Rails.env.production?
  MAX_PRODUCT_PICTURES = 5
  MAX_SERVICE_PICTURES = 5
  MAX_SLIDES = 5
else
  MAX_PRODUCT_PICTURES = 2
  MAX_SERVICE_PICTURES = 2
  MAX_SLIDES = 2
end
module GlobalConstant
  COMANYـNAME="ایده پردازان هوشمند"
end

