<img width="800" height="533" alt="image" src="https://github.com/user-attachments/assets/ef1fca5a-4ebb-40f4-93fd-7fd95742ee07" />



## AWS | GenAI Chatbot
AWS GenAI LLM Chatbot is an open‑source, enterprise‑ready generative AI chatbot solution that you can deploy in your own AWS account. It’s designed to let you build powerful chatbots that combine large language models (LLMs) and Retrieval‑Augmented Generation (RAG) — meaning it can answer questions using both the model’s capabilities and relevant content from indexed documents stored in your AWS environment



🎯 Architecture Overview
```
✅Virtual Private Cloud (VPC) with subnets and NAT
✅Lambda functions for backend processing
✅RAG pipeline with embeddings + search
✅Bedrock integration to run LLMs like Claude or Titan
✅DynamoDB for storing conversation history
✅OpenSearch vector search for retrieval
✅AWS AppSync for GraphQL APIs
✅Cognito for auth
✅S3 + CloudFront for serving the React UI
✅CI/CD automation (GitHub Actions)
```


🎯 Capabilities
```
Multi‑LLM support – interface to different language models
RAG workspaces/document indexing – upload and index data for contextual query answering
Multimodal – hints at SageMaker‑based models that can support images (likely via config)
Role‑based access control (Cognito)
Multi‑model comparison during chat
Terraform based deployment steps
```


🚀 Deployment Options
```
terraform init
terraform validate
terraform plan -var-file="template.tfvars"
terraform apply -var-file="template.tfvars" -auto-approve
```

