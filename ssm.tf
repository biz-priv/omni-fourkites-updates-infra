resource "aws_ssm_parameter" "shipment_file_queue_url" {
  name  = "/${var.application}/${var.env}/shipment-file-queue-url"
  type  = "String"
  value = aws_sqs_queue.omni_fourkites_update_shipment_file_queue.url

  tags = {
    Application = var.application
    CreatedBy   = var.created_by
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "shipment_file_queue_arn" {
  name  = "/${var.application}/${var.env}/shipment-file-queue-arn"
  type  = "String"
  value = aws_sqs_queue.omni_fourkites_update_shipment_file_queue.arn

  tags = {
    Application = var.application
    CreatedBy   = var.created_by
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "fourkites_customer_list_table_name" {
  name  = "/${var.application}/${var.env}/fourkites-customer-list-table-name"
  type  = "String"
  value = aws_dynamodb_table.fourkites_customer_list.name
  tags = {
    Application = var.application
    CreatedBy   = var.created_by
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "fourkites_doc_upload_status_name" {
  name  = "/${var.application}/${var.env}/fourkites-doc-upload-status-table-name"
  type  = "String"
  value = aws_dynamodb_table.fourkites_doc_upload_status.name
  tags = {
    Application = var.application
    CreatedBy   = var.created_by
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "fourkites_doc_upload_status_table_stream_arn" {
  name  = "/${var.application}/${var.env}/fourkites-doc-upload-status-table-stream-arn"
  type  = "String"
  value = aws_dynamodb_table.fourkites_doc_upload_status.stream_arn
  tags = {
    Application = var.application
    CreatedBy   = var.created_by
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "fourkites_doc_upload_status_table_status_index" {
  name  = "/${var.application}/${var.env}/fourkites-doc-upload-status-table-status-index"
  type  = "String"
  value = "Status-index"
  tags = {
    Application = var.application
    CreatedBy   = var.created_by
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "fourkites_doc_upload_url" {
  name  = "/${var.application}/${var.env}/fourkites-doc-upload-url"
  type  = "String"
  value = var.fourkites_url
  tags = {
    Application = var.application
    CreatedBy   = var.created_by
    Environment = var.env
    STAGE       = var.env
  }
}
