#!/usr/bin/env bash
set -euo pipefail

BASE_DIR="/opt/openclaw"
INSTANCES_DIR="$BASE_DIR/instances"
SHARED_DIR="$BASE_DIR/shared"
SOURCE_ROOT="/root/.openclaw/workspace"
OFFICE_PERSONAS_DIR="$SOURCE_ROOT/office-personas"
STACK_DIR="$SOURCE_ROOT/openclaw-office-stack"

mkdir -p "$INSTANCES_DIR" "$SHARED_DIR/docs" "$SHARED_DIR/logs" "$SHARED_DIR/prompts"

instances=(
  "main|main|Main Office Assistant|🧭|Front desk / dispatcher"
  "minutes|03-minutes-meeting-notes|Minutes|📝|Meeting notes and action items"
  "inbox|04-inbox-triage|Inbox|📥|Inbox triage and draft replies"
  "project|01-orion-project-coordinator|Project|🎯|Project coordination"
  "report|05-report-analyst|Report|📊|KPI and reporting"
  "docs|07-docs-writer|Docs|📚|Documentation and SOP writing"
  "support|09-support-triage|Support|🎧|Support triage"
  "sales|08-sales-assistant|Sales|💼|Sales support and outreach"
  "competitor|10-competitor-watch|Competitor|🔭|Competitor and market watch"
  "code-review|06-code-reviewer|Code Review|🔎|Engineering code review"
)

for row in "${instances[@]}"; do
  IFS='|' read -r key persona_dir display emoji role <<< "$row"

  instance_root="$INSTANCES_DIR/$key"
  workspace="$instance_root/workspace"
  mkdir -p "$workspace/memory"

  cat > "$instance_root/openclaw.json" <<JSON
{
  "agents": {
    "defaults": {
      "workspace": "$workspace"
    }
  }
}
JSON

  if [[ "$key" == "main" ]]; then
    cp "$STACK_DIR/templates/main/AGENTS.md" "$workspace/AGENTS.md"
    cp "$STACK_DIR/templates/main/SOUL.md" "$workspace/SOUL.md"
    cp "$STACK_DIR/templates/main/USER.md" "$workspace/USER.md"
    cp "$STACK_DIR/templates/main/IDENTITY.md" "$workspace/IDENTITY.md"
    cp "$STACK_DIR/templates/main/TOOLS.md" "$workspace/TOOLS.md"
    cp "$STACK_DIR/templates/main/HEARTBEAT.md" "$workspace/HEARTBEAT.md"
    cp "$STACK_DIR/templates/main/MEMORY.md" "$workspace/MEMORY.md"
  else
    cp "$STACK_DIR/templates/main/AGENTS.md" "$workspace/AGENTS.md"
    cp "$OFFICE_PERSONAS_DIR/$persona_dir/SOUL.md" "$workspace/SOUL.md"
    cat > "$workspace/IDENTITY.md" <<TXT
# IDENTITY.md

- Name: $display
- Role: $role
- Vibe: Focused, practical, office-ready
- Emoji: $emoji
TXT

    cat > "$workspace/USER.md" <<TXT
# USER.md

- Name: Office Team
- What to call them: Team
- Timezone: Adjust to your office timezone
- Notes:
  - Persona key: $key
TXT

    cat > "$workspace/TOOLS.md" <<TXT
# TOOLS.md

Add persona-specific notes here for $key.
TXT

    cat > "$workspace/HEARTBEAT.md" <<TXT
# HEARTBEAT.md

# Keep empty until you want periodic checks.
TXT

    cat > "$workspace/MEMORY.md" <<TXT
# MEMORY.md

Curated long-term memory for the $display persona.
TXT
  fi

done

echo "Bootstrap complete. Instances created under: $INSTANCES_DIR"
echo "Recommended first active personas: main, minutes, inbox, project"
