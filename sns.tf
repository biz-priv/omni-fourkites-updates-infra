resource "aws_sns_topic_subscription" "shipment_file_stream_sns_subscription" {
  topic_arn = "arn:aws:sns:us-east-1:${var.aws_account_number}:omni-wt-rt-shipment-file-${var.env}"
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.omni_fourkites_update_shipment_file_queue.arn
}
