function prompt_cloudfoundry_target() {
if [[ -f "manifest.yml" ]]; then
    CF_CONFIG=$(less ~/.cf/config.json)
    CF_API_ENDPOINT=$(echo $CF_CONFIG | jq -r '(.Target | gsub("https://api.run.|.io";""))')
    CF_ORG=$(echo $CF_CONFIG | jq -r '.OrganizationFields.Name')
    CF_SPACE=$(echo $CF_CONFIG | jq -r '.SpaceFields.Name')
    p10k segment -b black -f white -t "$CF_ORG:$CF_SPACE" -i $'\Uf65e'
fi
}

function instant_prompt_cloudfoundry_target() {
    prompt_cloudfoundry_target
}  