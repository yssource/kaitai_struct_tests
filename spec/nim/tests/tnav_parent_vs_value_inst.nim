# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest, os, streams, options, ../testhelpers
import ../../../compiled/nim/nav_parent_vs_value_inst

var
  stream = newFileStream("test_out/nim/junitreports/nav_parent_vs_value_inst.xml", fmWrite)
  outputFormatter = newJUnitOutputFormatter(stream)
addOutputFormatter(outputFormatter)

suite "Kaitai Struct Compiler Test Suite":
  test "Nim: NavParentVsValueInst":
    let r = NavParentVsValueInst.fromFile("src/term_strz.bin")

    check(r.s1 == "foo")

close(outputFormatter)
