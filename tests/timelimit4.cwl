class: CommandLineTool
cwlVersion: v1.2.0-dev4
inputs: []
outputs: []
requirements:
  InlineJavascriptRequirement: {}
  ToolTimeLimit:
    timelimit: $(1+2)
  WorkReuse:
    enableReuse: false
baseCommand: [sleep, "15"]
