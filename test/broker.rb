require 'small_event'
require 'minitest/autorun'

describe "broker" do

  let(:b){ SmallEvent::broker.new }

  describe "publish to all" do
  
    let(:publish){b.publish "hello world"}
  
    describe "no subs" do      
    end
    
    describe "one sub" do
      
      let(:sub1) do
        b.subscribe do          
        end
      end
      
    end
    
  end
  
  describe "publish to one" do
  end
  
  describe "publish to many" do
  end
  
end
