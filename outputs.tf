output "public-ip-address" {
    value = aws_instance.Project2vm.public_ip
}

output "public-dns" {
    value = aws_instance.Project2vm.public_dns
  
}
output "instance-id" {
    value = aws_instance.Project2vm.id
}
output "ami-used" {
    value = aws_instance.Project2vm.ami
}
output "instance-type-used" {
    value = aws_instance.Project2vm.instance_type
}
output "instance-state" {
    value = aws_instance.Project2vm.instance_state
}   

output "name-tag" {
    value = aws_instance.Project2vm.tags["Name"]
}   