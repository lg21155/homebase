module PermitParams
  def permit_params
   params.require(:permit).permit(
    :owner_name, 
    :owner_address, 
    :addition, 
    :house_area, 
    :addition_area, 
    :ac, 
    :phone,
    :email,
    :work_summary,
    :job_cost,
    :status,
    :window,
    :door,
    :wall,
    :siding,
    :floor,
    :window_count,
    :door_count,
    :cover,
    :pool,
    :deck,
    :acs_struct
    )
 end
end