require 'spec_helper'

module Amida
  describe App do
    describe '#header' do
      it 'returns string for header' do
        subject.header(5).should eq "A  B  C  D  E\n|  |  |  |  |  "
      end
    end

    describe '#row' do
      before { subject.stub!(:rand).and_return(2) }
      it 'returns string for row' do
        subject.row(5).should eq "|  |  |--|  |  "
      end
    end

    describe '#footer' do
      before { subject.stub!(:rand).and_return(1) }
      it 'returns string for footer' do
        subject.footer(5).should eq "|  |  |  |  |  \n   *         "
      end
    end
  end
end
