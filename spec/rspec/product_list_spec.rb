# coding: utf-8
require 'spec_helper'

describe Taobao::ProductList do
  
  describe 'init with default options and category id' do
    pl = Taobao::ProductList.new(cid: 28)
    
    fixture = 'items.json'.json_fixture
    args = {
      method: 'taobao.items.get',
      fields: 'num_iid,title,nick,pic_url,cid,price,type,delist_time,post_fee,score,volume',
      cid: 28
    }

    
    it 'should return 40 items' do
      Taobao.stub(:api_request).with(args).and_return(fixture)
      pl.size.should == 40
    end
    it 'total count should be greater than zero' do
      Taobao.stub(:api_request).with(args).and_return(fixture)
      pl.total_count.should be > 0
    end
  end
end