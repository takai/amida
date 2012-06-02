require 'spec_helper'

module Amida
  describe App do
    describe '#header' do
      it 'returns header' do
        subject.header(5).should eq "A  B  C  D  E\n|  |  |  |  |  "
      end
    end
    describe '#row' do
      it do
        subject.stub!(:rand).and_return(2)
        subject.row(5).should eq "|  |  |--|  |  "
      end
    end

    describe '#footer' do
      it do
        subject.stub!(:rand).and_return(1)
        subject.footer(5).should eq "|  |  |  |  |  \n   *         "

      end
    end
  end
end
