locals{
    common_tags = {
        Project = var.project
        Terraform = true
        Environment = var.environment
    }
    vpc_final_tags = merge(
        local.common_tags,
        {
            Name = "${var.project}-${var.environment}"
        },
        var.vpc_tags
    )
}