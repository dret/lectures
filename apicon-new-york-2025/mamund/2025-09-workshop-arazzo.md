# presentation
title: Arazzo Workflow Basics
layout: 16x9

# part
title: Why Arazzo?

## slide
title: Setting the Stage
- APIs are often called one-by-one
- Real work usually spans multiple calls
- Workflows describe these sequences
- Arazzo standardizes API workflows

## slide
title: Why Workflows?
- Capture repeatable business tasks
- Reduce client-side complexity
- Improve reliability and reuse
- Enable automation across APIs

## slide
title: Why Arazzo?
- OpenAPI describes single API calls
- Arazzo describes **flows of calls**
- Shared format for tools & runtimes
- Designed to integrate with OpenAPI

# part
title: Anatomy of Arazzo

## slide
title: Big Picture
- JSON/YAML document format
- Root: `info`, `sourceDescriptions`, `workflows`
- Focus on linking APIs into workflows
- Lightweight and tool-friendly

## slide
title: Info Section
- Metadata about the workflow
- Title, version, description
- Similar to OpenAPI `info`
- Human-friendly entry point

## slide
title: Source Descriptions
- Define the APIs you will call
- Typically link to OpenAPI specs
- Can include auth or server info
- Provide the building blocks for steps

## slide
title: Workflows Section
- Named, reusable workflows
- Each workflow has:
  - Inputs (required from caller)
  - Parameters (values passed to steps)
  - Success & failure conditions
  - Outputs (results for caller)

## slide
title: Steps
- Ordered set of actions
- Each step:
  - References a source API
  - Calls a specific operation
  - Defines inputs/outputs
- Steps may be sequential or conditional

## slide
title: Outputs
- Collected results of the workflow
- May include success/failure signals
- Structured to support automation
- Final deliverable for the caller

# part
title: Example Workflow

## slide
title: Task Management Example
- Based on our Task Management API
- Simple workflow:
  1. Assign a task
  2. Check task status
  3. Mark task complete
- Captures a common API use-case

## slide
title: Example: Assign a Task
- Step calls `/assignTask` operation
- Inputs: `userId`, `taskId`
- Output: confirmation of assignment

## slide
title: Example: Check Task Status
- Step calls `/getTaskStatus`
- Input: `taskId`
- Output: current task state

## slide
title: Example: Complete Task
- Step calls `/completeTask`
- Input: `taskId`
- Output: completion confirmation

## slide
title: Putting It Together
- Workflow links the three steps
- Inputs: `userId`, `taskId`
- Outputs: final confirmation
- Arazzo expresses the whole sequence

# part
title: Review

## slide
title: Why Arazzo? (Review)
- APIs often require multiple calls
- Workflows capture business tasks
- Arazzo standardizes workflow definitions

## slide
title: Anatomy (Review)
- `info`, `sourceDescriptions`, `workflows`
- Workflows contain inputs, steps, outputs
- Steps connect API operations

## slide
title: Example (Review)
- Showed a Task Management flow
- Assign → Check → Complete
- Demonstrated Arazzo basics

## slide
title: Closing
- Workflows are key to API integration
- Arazzo brings standardization
- Next step: try building your own

