# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest, os, streams, options, ../testhelpers
import ../../../compiled/nim/cast_nested

var
  stream = newFileStream("test_out/nim/junitreports/cast_nested.xml", fmWrite)
  outputFormatter = newJUnitOutputFormatter(stream)
addOutputFormatter(outputFormatter)

suite "Kaitai Struct Compiler Test Suite":
  test "Nim: CastNested":
    let r = CastNested.fromFile("src/switch_opcodes.bin")

    check(r.opcodes0Str.value == "foobar")
    check(r.opcodes0StrValue == "foobar")
    check(r.opcodes1Int.value == 66)
    check(r.opcodes1IntValue == 66)

close(outputFormatter)
