# Launching AWS Instance
resource "aws_instance" "nginx_ec2" {
       ami = "ami-005e284ecef49125a"
       instance_type = var.ec2
       iam_instance_profile = aws_iam_instance_profile.instance_profile.name
       user_data = var.user_data

       security_groups = [aws_security_group.sg_nginx.id]
       subnet_id   = "subnet-0f41c891a9c6c7d40"
       tags = {
           Name = "Nginx-ec2"
           Environment = "Nginx-Web"
       }       
}
