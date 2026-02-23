#!/bin/bash

set -e
source "$(dirname "$0")/theme.sh"

AGENT_DIR=".agent"
AGENT_DIR_VIEW="${UNDERLINE}${BOLD}${CYAN}$AGENT_DIR${NC}"

if [ ! -d "$AGENT_DIR" ] || [ ! -f ".gitmodules" ] || ! grep -q "path = $AGENT_DIR" .gitmodules; then
    echo -e "${CYAN}${LOGO} Adding ${AGENT_DIR_VIEW} submodule..."
    git submodule add git@github.com:caffeine-js/agent-guide.git "$AGENT_DIR"
    echo -e "${GREEN}${LOGO} Agent added successfully!"
else
    echo -e "${GREEN}${LOGO} Agent is already installed."
fi
