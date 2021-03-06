module MembersHelper
    def gravatar_for email, options = {}
        options = {:alt => 'avatar', :class => 'avatar', :size => 80}.merge! options
        id = Digest::MD5::hexdigest @user.email.strip.downcase
        url = 'https://www.gravatar.com/avatar/' + id + '.jpg?s=' + options[:size].to_s
        options.delete :size
        image_tag url, options
    end
end
