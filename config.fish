source ~/.config/fish/fish/envrc.fish

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yanmingzhi/gcloud/google-cloud-sdk/path.fish.inc' ]; . '/Users/yanmingzhi/gcloud/google-cloud-sdk/path.fish.inc'; end

starship init fish | source
