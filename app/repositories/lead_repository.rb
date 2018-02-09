class LeadRepository
  def initialize(data_source:)
    @data_source = data_source
  end

  def all
    data_source.all
  end

  def new_entity(attrs = nil)
    data_source.new(attrs)
  end

  def find(id:)
    data_source.find(id)
  end

  def save(lead)
    lead.save
  end

  private

  attr_reader :data_source
end
