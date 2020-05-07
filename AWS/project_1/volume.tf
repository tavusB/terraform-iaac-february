#create volume  and attach to instance ===========================================================================================================
 resource "aws_ebs_volume" "web" {
 availability_zone = "us-west-2a"
  size = 100
  tags = {
         Name = "web-data-volume"
   }
 }
 variable "data_volume_device_list" {
    description = "device list for EC2 mapping"
    type        = "list"
   default     = ["/dev/sdf", "/dev/sdg", "/dev/sdh", "/dev/sdi"]
  }
resource "aws_volume_attachment" "web_data_vol_att" {
  device_name = "${element(var.data_volume_device_list, count.index )}"
  volume_id   = "${element(aws_ebs_volume.web.*.id, count.index)}"
  instance_id = "${element(aws_instance.web.*.id, count.index)}"
}

 #note:intead of 3 block up you can use this code to creating and attaching volume 
#  resource "aws_ebs_volume" "volume" {
#   availability_zone = "us-west-2b"
#   size              = 100
#   tags = {
#     Name = "Task1_volume"
#   }
# }

# resource "aws_volume_attachment" "ebs_task1" {
#   device_name = "/dev/sdh"
#   volume_id   = "${aws_ebs_volume.volume.id}"
#   instance_id = "${aws_instance.web.id}"
# }
  
  
  


  
