local id_ed25519 = 'C:\\Users\\jaign\\.ssh\\id_ed25519'

return {

	default_gui_startup_args = { 'connect', 'local' },

	serial_ports = {
		-- {
		-- 	name = 'uart0',
		-- 	port = 'COM3',
		-- 	baud = 1500000,
		-- },
		-- {
		-- 	name = 'uart1',
		-- 	port = 'COM3',
		-- 	baud = 115200,
		-- },
	},

	-- ref: https://wezfurlong.org/wezterm/config/lua/SshDomain.html
	ssh_domains = {
		{
			-- The connection is an ssh connection, don't use any multiplexing.
			multiplexing = 'None',

			-- The name of this specific domain. Must be unique amongst
			name = 'eq12-server',

			-- identifies the host:port pair of the remote server
			-- Can be a DNS name or an IP address with an optional
			-- ":port" on the end.
			remote_address = '192.168.30.10:22',

			-- Whether agent auth should be disabled.
			-- Set to true to disable it.
			-- no_agent_auth = false,

			-- The username to use for authenticating with the remote host
			username = 'jaign',

			-- Specify a SSH connection authentication file
			-- Default authentication file is "~/.ssh/id_ed25519"
			ssh_option = {
				identityfile = id_ed25519,
			},
		},
		-- {
		-- 	multiplexing = 'None',
		-- 	name = '94',
		-- 	remote_address = '10.192.0.94:22',
		-- 	username = 'wang_jiangtong',
		-- 	ssh_option = {
		-- 		identityfile = id_ed25519,
		-- 	},
		-- },
	},

	-- ref: https://wezfurlong.org/wezterm/multiplexing.html#unix-domains
	unix_domains = {},

	-- ref: https://wezfurlong.org/wezterm/config/lua/WslDomain.html
	wsl_domains = {
		{
			name = 'WSL:Arch',
			distribution = 'Arch',
			username = 'jaign',
			default_cwd = '/home/jaign',
			default_prog = { 'fish' },
		},
	},
}
