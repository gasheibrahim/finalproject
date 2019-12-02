module ApplicationHelper
	def current_user
        @current_user ||= User.find_by(id: session[:user_id])
      end
    def logged_in?
        current_user.present?
    end
    def cart_count_over_one
    return total_cart_items if total_cart_items > 0
	end
	def total_cart_items
	   total = @cart.lineitems.map(&:quantity).sum
	   return total if total > 0
	end
end
