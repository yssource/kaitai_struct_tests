# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest, os, streams, options, ../testhelpers
import ../../../compiled/nim/valid_short

var
  stream = newFileStream("test_out/nim/junitreports/valid_short.xml", fmWrite)
  outputFormatter = newJUnitOutputFormatter(stream)
addOutputFormatter(outputFormatter)

suite "Kaitai Struct Compiler Test Suite":
  test "Nim: ValidShort":
    let r = ValidShort.fromFile("src/fixed_struct.bin")


close(outputFormatter)
