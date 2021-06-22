rem "Downloading DNS server"

if NOT EXIST coredns.tgz (
    curl -L https://github.com/coredns/coredns/releases/download/v1.8.4/coredns_1.8.4_windows_amd64.tgz -o coredns.tgz
)

tar -xvzf coredns.tgz coredns.exe

rem "Setting up as a windows service"

curl -L https://github.com/winsw/winsw/releases/download/v2.11.0/WinSW-x64.exe -o curreydns.exe

curreydns.exe install
curreydns.exe start

rem ""
rem "Setup complete."

pause