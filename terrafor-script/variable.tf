variable "region" {
    type = "string"
    default = "ap-south-1" 
  
}
variable "Instance_type" {
    type = "string"
    default = "t2.micro"
  
}
variable "ami_id" {
    type = "string"
    default = "ami-0a9d27a9f4f5c0efc" 
}
variable "keyname" {
    type = string
    default = "kubernetes"
  
}