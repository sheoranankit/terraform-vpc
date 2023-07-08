// OUTPUT VARIABLE
output "vpcid" { // name of the variable
  value = aws_vpc.vpc.id // the value that you'd like to output once the resource is created
}

// OUTPUT VARIABLE
output "vpcarn" { // name of the variable
  value = aws_vpc.vpc.arn // the value that you'd like to output once the resource is created
}

