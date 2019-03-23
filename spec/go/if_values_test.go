// Autogenerated from KST: please remove this line if doing any edits by hand!

package spec

import (
	"runtime/debug"
	"os"
	"testing"
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	. "test_formats"
	"github.com/stretchr/testify/assert"
)

func TestIfValues(t *testing.T) {
	defer func() {
		if r := recover(); r != nil {
			debug.PrintStack()
			t.Fatal("unexpected panic:", r)
		}
	}()
	f, err := os.Open("../../src/fixed_struct.bin")
	if err != nil {
		t.Fatal(err)
	}
	s := kaitai.NewStream(f)
	var r IfValues
	err = r.Read(s, &r, &r)
	if err != nil {
		t.Fatal(err)
	}

	assert.EqualValues(t, 80, r.Codes[0].Opcode)
	tmp1, err := r.Codes[0].HalfOpcode()
	if err != nil {
		t.Fatal(err)
	}
	assert.EqualValues(t, 40, tmp1)
	assert.EqualValues(t, 65, r.Codes[1].Opcode)
	tmp2, err := r.Codes[1].HalfOpcode()
	if err != nil {
		t.Fatal(err)
	}
	assert.Nil(t, tmp2)
	assert.EqualValues(t, 67, r.Codes[2].Opcode)
	tmp3, err := r.Codes[2].HalfOpcode()
	if err != nil {
		t.Fatal(err)
	}
	assert.Nil(t, tmp3)
}
