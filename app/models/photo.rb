class Photo < ActiveRecord::Base
  attr_accessible :photo
  has_attached_file :photo, Paperclip::Attachment.default_options.merge({ 
      default_url: "/assets/missing_photo_:style.png",     
      styles: { medium: "300x300>", thumb: "100x100>" }
    })
end
