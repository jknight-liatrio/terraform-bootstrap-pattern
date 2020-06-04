# Configure root level variables that all resources can inherit. This is especially helpful with multi-account configs
# where terraform_remote_state data sources are placed directly into the modules.

terraform {
    source = "../..//terraform"
    extra_arguments "shared_vars" {
        commands = get_terraform_commands_that_need_vars()
    }
}

inputs = {
}
