function FindProxyForURL(url, host) {
	if (shExpMatch(host, "*.kaa")) {
		return "SOCKS5 localhost:2223";
	} else {
		return "DIRECT";
	}
}
