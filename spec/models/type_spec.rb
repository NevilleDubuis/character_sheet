require 'spec_helper'

describe Type do

  it { should have_db_column(:name) }
  it { should validate_presence_of(:name) }

  it { should have_db_column(:classname) }
  it { should validate_presence_of(:classname) }

  it { should have_many(:cards) }

end