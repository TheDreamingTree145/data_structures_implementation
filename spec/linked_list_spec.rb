require_relative './spec_helper.rb'
  describe Node do 
    it 'should be initialized with a value and a next_node' do 
      new_node = Node.new("Test Value", nil)  
      
      expect(new_node.value).to eq("Test Value")
      expect(new_node.next_node).to eq(nil)
    end
  end
  
  describe LinkedList do
    it 'should be initialized with a head node' do
      head = Node.new("Test value", nil)
      linked = LinkedList.new(head) 
      
      expect{ LinkedList.new(head) }.to_not raise_error
      
      expect(linked.head).to eq(head)
      
    end
    
    describe '#add_node' do
      head = Node.new("Test value")
      new_node_1 = Node.new("test value 2")
      head.next_node= new_node_1 
      new_node_2 = Node.new("test value 3")
      new_node_1.next_node = new_node_2
      linked = LinkedList.new(head) 
      
      it 'should insert the new node before the supplied node' do
        
        added_node = linked.add_node("Valerie", new_node_2)
        
        expect(new_node_1.next_node).to eq(added_node)

        expect(added_node.next_node).to eq(new_node_2)
      end
      
      it 'works for adding a node to the end' do
        
        end_node = linked.add_node("Jessy", nil)
        expect(new_node_2.next_node).to eq(end_node)
        expect(end_node.next_node).to eq(nil)
      end
      
    end
    
    describe '#find_node' do
      it 'should find a node' do 
        
      head = Node.new("Test value")
      new_node_1 = Node.new("test value 2")
      head.next_node= new_node_1 
      new_node_2 = Node.new("test value 3")
      new_node_1.next_node = new_node_2
      linked = LinkedList.new(head) 
      
      expect(linked.find_node('test value 3')).to eq(new_node_2)
      expect(linked.find_node('test value 2')).to eq(new_node_1)
        
      end  
    end
      
    
  end
