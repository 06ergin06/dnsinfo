# DNSInfo

A simple Bash script that retrieves and displays comprehensive DNS information for any domain or website in a clean, color-coded format.

## Features

- **Complete DNS Record Lookup**: Retrieves all major DNS record types (NS, A, AAAA, MX, TXT, CNAME, SOA)
- **Color-coded Output**: Green for successful records, red for empty records, white headers for easy reading
- **Multiple Record Type Support**:
  - **NS**: Nameserver records
  - **A**: IPv4 addresses
  - **AAAA**: IPv6 addresses
  - **MX**: Mail exchange records
  - **TXT**: Text records (SPF, DKIM, etc.)
  - **CNAME**: Canonical name records
  - **SOA**: Start of Authority records
- **Clean Interface**: Well-formatted output with clear section headers
- **Error Handling**: Displays helpful messages for empty or missing records
- **Single Command**: Get all DNS information with one simple command

## How It Works

The script uses the `dig` command to query DNS servers for various record types:

- **Available Records**: Displays the actual DNS record values in green
- **Empty Records**: Shows "Record is empty" message in red for missing records
- **Organized Output**: Each record type is clearly labeled and separated
- **Domain Validation**: Requires a domain parameter to run

## Prerequisites

- `dig` command (usually comes with `dnsutils` package)
- Bash shell
- Linux/Unix/macOS environment

### Installing dig (if not available)

```bash
# Ubuntu/Debian
sudo apt update && sudo apt install dnsutils

# CentOS/RHEL/Fedora
sudo yum install bind-utils
# or for newer versions
sudo dnf install bind-utils

# macOS (using Homebrew)
brew install bind
```

## Installation

### Download the Script

You can download the script directly using `curl` or `wget`:

```bash
# Using curl
curl -O https://raw.githubusercontent.com/06ergin06/dnsinfo/main/script.sh

# Using wget
wget https://raw.githubusercontent.com/06ergin06/dnsinfo/main/script.sh

# Or clone the entire repository
git clone https://github.com/06ergin06/dnsinfo.git
cd dnsinfo
```

## Usage

Make the script executable and run it:

```bash
chmod +x script.sh
./script.sh <domain_name>
```

### Parameters

- `<domain_name>` (required): The domain or website to query (e.g., `ihakkiergin.me`, `google.com`)

### Examples

```bash
# Check DNS records for a personal website
./script.sh ihakkiergin.me

# Check DNS records for Google
./script.sh google.com

# Check DNS records for GitHub
./script.sh github.com

# Check DNS records for a subdomain
./script.sh mail.ihakkiergin.me
```

## Sample Output

```text
./script.sh ihakkiergin.me
Welcome to dnsinfo app
-----ihakkiergin.me-----
Nameserver
dns4.p09.nsone.net.
dns3.p09.nsone.net.
dns1.p09.nsone.net.
dns2.p09.nsone.net.
IPv4
63.176.8.218
35.157.26.135
IPv6
Record is empty
MX
Record is empty
TXT
"google-site-verification=unR-1Jy3kRQI8V0Sc--vVlPN6KJCOZYcx49vP8-r0is"
CNAME
Record is empty
SOA
dns1.p01.nsone.net. domains+netlify.netlify.com. 1746366152 43200 7200 1209600 3600
```

```text
./script.sh google.com
Welcome to dnsinfo app
-----google.com-----
Nameserver
ns1.google.com.
ns2.google.com.
ns3.google.com.
ns4.google.com.
IPv4
142.250.191.14
IPv6
2607:f8b0:4004:c1b::65
MX
10 smtp.google.com.
TXT
"v=spf1 include:_spf.google.com ~all"
"google-site-verification=..."
CNAME
Record is empty
SOA
ns1.google.com. dns-admin.google.com. 123456789 900 900 1800 60
```

## Error Handling

If you don't provide a domain parameter:

```text
./script.sh
Welcome to dnsinfo app
You must enter a parameter as a website.
```