resource "aws_dynamodb_table" "fourkites_customer_list" {
  name           = "fourkites-customer-list-${var.env}"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "BillNo"
  stream_enabled = false

  attribute {
    name = "BillNo"
    type = "S"
  }

  tags = {
    Application = var.application
    CreatedBy   = var.created_by
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_dynamodb_table" "fourkites_doc_upload_status" {
  name             = "fourkites-doc-upload-status-${var.env}"
  billing_mode     = "PAY_PER_REQUEST"
  hash_key         = "OrderNo"
  range_key        = "DocType"
  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  attribute {
    name = "OrderNo"
    type = "S"
  }

  attribute {
    name = "DocType"
    type = "S"
  }

  attribute {
    name = "Status"
    type = "S"
  }

  global_secondary_index {
    name            = "Status-index"
    hash_key        = "Status"
    projection_type = "ALL"
  }

  tags = {
    Application = var.application
    CreatedBy   = var.created_by
    Environment = var.env
    STAGE       = var.env
  }
}
