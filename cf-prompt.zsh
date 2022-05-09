#!/bin/zsh

function get_cloudfoundry_target_info() {
    CF_CONFIG=$(less ~/.cf/config.json)
    # CF_API_ENDPOINT=$(echo $CF_CONFIG | jq -r '(.Target | gsub("https://api.run.|.io";""))')
    CF_ORG=$(echo $CF_CONFIG | jq -r '.OrganizationFields.Name')
    PROMPT_OUTPUT="$CF_ORG"
    CF_SPACE=$(echo $CF_CONFIG | jq -r '.SpaceFields.Name')
    if [[ -n "$CF_SPACE" ]]; then
        PROMPT_OUTPUT="${PROMPT_OUTPUT}:${CF_SPACE}"
    fi
    echo "$PROMPT_OUTPUT"
}

function prompt_cloudfoundry_target() {
    PROMPT_OUTPUT=$(get_cloudfoundry_target_info)
    if [[ -f "manifest.yml" ]] && [[ -n "$PROMPT_OUTPUT" ]]; then
        p10k segment -b black -f white -t "$PROMPT_OUTPUT" -i $'\Uf65e' 
    fi
}

function instant_prompt_cloudfoundry_target() {
    prompt_cloudfoundry_target
}  