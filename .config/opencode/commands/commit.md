---
description: Create a git commit with optional instructions.
subtask: true
---
# Git Commit Creation Guide

User provided context about the current git state and optional comments.

You need to create a git commit using the provided information.

All information needed to create the commit is included in the context, so no additional tools or commands should be called.

## Context

### Current Staged Changes

!`git status --short --untracked-files=no`

### Current Git Diff

!`git --no-pager diff --cached`

### Recent Commits

!`git --no-pager log --oneline -10`

### User Comment:

> $ARGUMENTS

## Your Task

Based on the Context provided above, create a single git commit with this command:

```
git commit -e -m "<message>" &
```

This command will wait in the background for the user to confirm the submitted content.
At this point, your task is completed and there is no need to perform other checks.