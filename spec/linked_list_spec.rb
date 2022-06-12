require "./lib/node"
require "./lib/linked_list"

RSpec.describe LinkedList, type: :spec do
    it "Exists with attributes" do
        list = LinkedList.new

        expect(list).to be_an_instance_of(LinkedList)
        expect(list.head).to be(nil)

        list.append("West")

        expect(list.head.next_node).to be(nil)
        expect(list.count).to eq(1)
        expect(list.to_string).to eq("The West family")
    end

    it "Multiple Nodes" do
        list = LinkedList.new

        expect(list.head).to be(nil)

        list.append("Rhodes")

        expect(list.head).to be_an_instance_of(Node)
        expect(list.head.next_node).to be(nil)

        list.append("Hardy")

        expect(list.head.next_node).to be_an_instance_of(Node)
        expect(list.count).to eq(2)
        expect(list.to_string).to eq("The Rhodes family, followed by the Hardy family")
    end

    it "Insert & Prepend" do
        list = LinkedList.new
        list.append("Brooks")

        expect(list.to_string).to eq("The Brooks family")

        list.append("Henderson")
        list.prepend("McKinney")

        expect(list.to_string).to eq("The McKinney family, followed by the Brooks family, followed by the Henderson family")
        expect(list.count).to eq(3)

        list.insert(1, "Lawson")

        expect(list.to_string).to eq("The McKinney family, followed by the Lawson family, followed by the Brooks family, followed by the Henderson family")
    end
end
