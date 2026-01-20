provider "aws" {
region = var.region
}


module "network" {
source = "./modules/network"
environment = var.environment
}


module "iam" {
source = "./modules/iam"
environment = var.environment
}


module "s3" {
source = "./modules/s3"
environment = var.environment
}

module "opensearch" {
source = "./modules/opensearch"
environment = var.environment
enable = var.enable_rag
vpc_id = module.network.vpc_id
subnet_ids = module.network.private_subnet_ids
}

module "bedrock" {
source = "./modules/bedrock"
enable = var.enable_bedrock
}

module "lambda" {
source = "./modules/lambda"
environment = var.environment
role_arn = module.iam.lambda_role_arn
subnet_ids = module.network.private_subnet_ids
vpc_id = module.network.vpc_id
opensearch_endpoint = module.opensearch.endpoint
llm_provider = var.llm_provider
 }

module "cognito" {
source = "./modules/cognito"
environment = var.environment
}

module "appsync" {
source = "./modules/appsync"
environment = var.environment
lambda_arn = module.lambda.arn
cognito_pool_id = module.cognito.user_pool_id
 }

module "frontend" {
source = "./modules/frontend"
environment = var.environment
bucket_name = module.s3.ui_bucket
 }

module "cloudfront" {
source = "./modules/cloudfront"
environment = var.environment
bucket_name = module.s3.ui_bucket
domain_name = var.domain_name
}
