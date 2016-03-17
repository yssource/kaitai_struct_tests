require 'fixed_struct'

RSpec.describe FixedStruct do
  it 'parses test properly' do
    r = FixedStruct.from_file('src/fixed_struct.bin')

    expect(r.hdr.uint8).to eq 255
    expect(r.hdr.uint16).to eq 65535
    expect(r.hdr.uint32).to eq 4294967295
    expect(r.hdr.uint64).to eq 18446744073709551615

    expect(r.hdr.sint8).to eq -1
    expect(r.hdr.sint16).to eq -1
    expect(r.hdr.sint32).to eq -1
    expect(r.hdr.sint64).to eq -1

    expect(r.hdr.uint16le).to eq 66
    expect(r.hdr.uint32le).to eq 66
    expect(r.hdr.uint64le).to eq 66

    expect(r.hdr.sint16le).to eq -66
    expect(r.hdr.sint32le).to eq -66
    expect(r.hdr.sint64le).to eq -66

    expect(r.hdr.uint16be).to eq 66
    expect(r.hdr.uint32be).to eq 66
    expect(r.hdr.uint64be).to eq 66

    expect(r.hdr.sint16be).to eq -66
    expect(r.hdr.sint32be).to eq -66
    expect(r.hdr.sint64be).to eq -66
  end
end
