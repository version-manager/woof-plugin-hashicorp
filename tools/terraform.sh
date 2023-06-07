# shellcheck shell=bash

terraform.table() {
	p.run_filter 'hashicorp.sh' 'terraform'
}

terraform.install() {
	local url="$1"
	local version="$2"

	p.fetch -o './terraform.zip' "$url"
	p.mkdir './dir/bin'
	p.unpack './terraform.zip' -d'./dir/bin'

	REPLY_DIR='./dir'
	REPLY_BINS=('./bin')
}
