// STRING VARIABLE
variable "cidr_block" { // name of the variable
  type = string // type of the variable (in the case string)
  default = "10.0.0.0/16" // value of the string variable, in this case the cidr block details
  description = "String variables can be used to define unique unicode configurations / identifiers / names, in the below example – a CIDR block address."
}

// NUMBER VARIABLE
variable "projectDuration" { // name of the variable
  type = number // type of the variable (in this case number)
  default = 28 // value of the number
  description = "Number variables can be used to define any whole or fractional number such as internal / external port numbers."
}

// BOOLEAN VARIABLE
variable "enabled" { // name of the variable
  default = true // value of the variable
  description = "Boolean variables are used to determine whether certain features are enabled within resources."
}

// LIST VARIABLE (ARRAY)
variable "instance_tenancy" {  // name of the variable
  type = list(string) // type of the variable, set as a list that accepts only string data
  default = ["default", "dedicated", "host"] // string values defined within the list
  description = "List variables can be used to define different types configurations for a particular such as availability zones and ports"
}

// MAP VARIABLE (key value pairs)
variable "assign_generated_ipv6_cidr_block" { // name of the variable
  type = map // type of the variable, that accepts string keys and string values 
  default = {
    "False" = "false"
    "True" = "true"
  }
  description = "Map variables are useful when defining information that is linked in key value paris – like environments (e.g “dev” = “dev-bucket”)"
}

// TUPLE VARIABLE
variable "launchDate" { // name of the variable
  type = tuple([number, string]) // type of the variable, a list that accepts two values, the first being a number and the second being a string 
  default = [4, "September"]
  description = "Tuple variables are useful when defining a resource with parameters required to set it up (e.g vcn = [“my_vpc”,”10.0.0.0/16″,false])"
}

// OBJECT VARIABLE
variable "projectArchitecture" { // name of the variable
  type = object({style = string, resourceNumber = number}) // type of the variable, an object that is expecting a string variable called 'style' and a number variable called 'resourceNumber'
  default = {
    style = "Serverless"
    resourceNumber = 7
  }
  description = "Object variables, similar to tuple variables are also useful for defining resources with their configurations – but in a JSON-like format"
}

// INPUT VARIABLE
variable "vpc_name" { // name of the variable
  type = string // type of the input variable, which will be string stype
  description = "Set the name of the VPC" // set the description message that appears as a prompt for when you type an input as the variables value
}

variable region {
  type        = string
  default     = "ap-south-1"
  description = "Name of the region"
}



