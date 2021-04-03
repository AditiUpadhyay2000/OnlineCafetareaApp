module ApplicationHelper
    def current_order
    #use find by id
    if Order.find_by_id(session[:order_id]).nil?
        Order.new
    else
        Order.find_by_id(session[:order_id])
    end
end
end
