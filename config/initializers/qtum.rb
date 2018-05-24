require 'bitcoin'

# configure
chain_config = {
  project: :qtum,
  magic_head: "\xf1\xcf\xa6\xd3",
  message_magic: "Qtum Signed Message:\n",
  address_version: "3a",
  p2sh_version: "32",
  privkey_version: "80",
  extended_privkey_version: "0488ade4",
  extended_pubkey_version: "0488b21e",
  default_port: 3888,
  protocol_version: 0,
  genesis_hash: "0x000075aef83cf2853580f8ae8ce6f8c3096cfa21d98334d6e3f95e5582ed986c",
  alert_pubkeys: []
}

Bitcoin::NETWORKS[:qtum] = chain_config
Bitcoin.network = :qtum
Qtum = Bitcoin