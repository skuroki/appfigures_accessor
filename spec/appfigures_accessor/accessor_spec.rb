require 'spec_helper'

describe AppfiguresAccessor::Accessor do
  let(:accessor) { AppfiguresAccessor::Accessor.new(
    'foo@example.com',
    'PASSWORD',
    'CLIENT_KEY') }

  describe '#my_products' do
    it 'returns my products' do
      VCR.use_cassette('my_products') do
        accessor.my_products['42']['id'].should eq 42
      end
    end
  end

  describe '#sales' do
    it 'returns sales' do
      VCR.use_cassette('sales') do
        accessor.sales['downloads'].should be_instance_of Fixnum
      end
    end
  end

  describe '#sales_by_dates_and_products' do
    it 'returns sales_by_dates_and_products' do
      VCR.use_cassette('sales_by_dates_and_products') do
        sales = accessor.sales_by_dates_and_products(start_date: '2014-01-01', end_date:'2014-01-03', products: '12345;67890')
        sales['2014-01-01']['12345']['downloads'].should be_instance_of Fixnum
        sales['2014-01-03']['67890']['downloads'].should be_instance_of Fixnum
      end
    end
  end
end
