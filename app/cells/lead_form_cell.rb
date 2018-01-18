class LeadFormCell < Cell::ViewModel
  include ::Cell::Erb
  property :first_name
  property :last_name
  def show
    render
  end

end
