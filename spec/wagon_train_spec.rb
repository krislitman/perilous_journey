require "./lib/node"
require "./lib/linked_list"
require "./lib/wagon_train"

RSpec.describe WagonTrain, type: :spec do
    it "Exists with attributes" do
        wt = WagonTrain.new

        expect(wt).to be_an_instance_of(WagonTrain)
        expect(wt.list).to be_an_instance_of(LinkedList)
        expect(wt.list.head).to be(nil)

        wt.append("Burke")

        expect(wt.list.head.surname).to eq("Burke")

        wt.append("West")

        expect(wt.count).to eq(2)
    end
end
