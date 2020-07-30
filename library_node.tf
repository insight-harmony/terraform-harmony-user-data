data "template_file" "library_node" {
  template = <<-EOT
    systemctl stop harmony
    mkdir -p /data/harmony
    chmod a+rw /data/harmony
    chown harmony:harmony /data/harmony
    if [[ -d /home/harmony/.local/share/harmony/chains ]]
    then
      mv /home/harmony/.local/share/harmony/chains /data/harmony/
    else
      mkdir -p /home/harmony/.local/share/
    fi
    ln -s /data/harmony /home/harmony/.local/share
    systemctl start harmony
  EOT
}
