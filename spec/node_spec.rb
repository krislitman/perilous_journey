require "./lib/node"

RSpec.describe Node, type: :spec do
    it "Exists with attributes" do
        node = Node.new("Burke")

        expect(node).to be_an_instance_of(Node)
        expect(node.surname).to eq("Burke")
        expect(node.next_node).to be(nil)
    end
end
