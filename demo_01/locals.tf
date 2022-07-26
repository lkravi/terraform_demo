locals {
  portfolio_name = "pssre"
  techarea       = "press"  
  service_name   = "payments"
  owner          = "KarthickT"
}

locals {
  # Common tags to be assigned to all resources
  common_tags = {
    Portfolio   = local.portfolio_name
    TechArea    = local.techarea    
    Service     = local.service_name
    Owner       = local.owner
  }
}