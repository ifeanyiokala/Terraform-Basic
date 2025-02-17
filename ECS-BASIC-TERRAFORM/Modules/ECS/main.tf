resource "huaweicloud_compute_instance" "myinstance" {
  name               = "Finclusion-test"
  image_name           = "Ubuntu 20.04 server 64bit"
  flavor_id          = "s6.xlarge.2"
  security_group_ids = [var.secgroup_id]
  availability_zone  = "af-south-1a"


  system_disk_type = "SAS"
  system_disk_size = 40

  data_disks {
    type = "SAS"
    size = 100
  }

  delete_disks_on_termination = true

  network {
    uuid = var.subnet_id
  }

  lifecycle {
    ignore_changes = [
      image_id, security_group_ids, tags , id 
    ]
  }
}

resource "huaweicloud_vpc_eip" "myeip" {
  publicip {
    type = "5_bgp"
  }
  bandwidth {
    name        = "test"
    size        = 8
    share_type  = "PER"
    charge_mode = "traffic"
  }
}

resource "huaweicloud_compute_eip_associate" "associated" {
  public_ip   = huaweicloud_vpc_eip.myeip.address
  instance_id = huaweicloud_compute_instance.myinstance.id
}


