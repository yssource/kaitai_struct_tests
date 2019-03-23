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

func TestJsSignedRightShift(t *testing.T) {
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
	var r JsSignedRightShift
	err = r.Read(s, &r, &r)
	if err != nil {
		t.Fatal(err)
	}

	tmp1, err := r.ShouldBe40000000()
	if err != nil {
		t.Fatal(err)
	}
	assert.EqualValues(t, 1073741824, tmp1)
	tmp2, err := r.ShouldBeA00000()
	if err != nil {
		t.Fatal(err)
	}
	assert.EqualValues(t, 10485760, tmp2)
}
