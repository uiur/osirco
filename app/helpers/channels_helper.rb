module ChannelsHelper
  def auto_link_and_expand(text)
    auto_link text, :html => {:target => '_blank'} do |link|
      res = link
      if link =~ /(http[s]?\:\/\/.+(?:jpg|jpeg|gif|png))/
        res += image_tag link
      end
      res
    end
  end
end
