#!/usr/bin/env cwl-runner

class: ExpressionTool
requirements:
  - class: InlineJavascriptRequirement
cwlVersion: v1.2.0-dev5

inputs:
  file1:
    type: File
    loadContents: true

outputs:
  output: int

expression: "$({'output': parseInt(inputs.file1.contents)})"
