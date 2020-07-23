#!/usr/bin/env cwl-runner
class: Workflow
cwlVersion: v1.2.0-dev5

inputs: []

outputs:
  count_output:
    type: int
    outputSource: step2/output

steps:
  step1:
    run: wc-tool.cwl
    in:
      file1:
        default:
          class: File
          location: whale.txt
    out: [output]

  step2:
    run: parseInt-tool.cwl
    in:
      file1: step1/output
    out: [output]
