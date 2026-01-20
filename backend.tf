terraform {
backend "s3" {
bucket = "genai-terraform-states"
key = "chatbot/dev.tfstate"
region = "us-east-1"
dynamodb_table = "terraform-locks"
encrypt = true
 }
}
