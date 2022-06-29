import subprocess


def generate_yml(device_name, mac):
    return f"""
network:
  version: 2
  renderer: NetworkManager
  ethernets:
    {device_name}:
      match:
        macaddress: {mac}
      dhcp4: true
      wakeonlan: true
"""

def main():
    devices = str(subprocess.check_output("ip l", shell=True), encoding='utf8').split("\n")
    device_name = ""
    mac = ""
    for i, e in enumerate(devices):
        if "lo" in e:
            continue
        if "docker" in e:
            continue
        device_name = e.split(":")[1]
        mac = devices[i + 1].split(" ")[-3]
        break

    with(open("wake-on-lan/00-installer-config.yaml", 'wt')) as writer:
        writer.writelines(generate_yml(device_name, mac))


if __name__ == '__main__':
    main()
