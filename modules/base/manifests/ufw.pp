# firewall for all servers
class base::ufw {
    include ::ufw

    ufw::allow { 'ssh':
        proto => 'tcp',
        port  => 22,
    }

    ufw::allow { 'nrpe':
        proto => 'tcp',
        port  => 5666,
    }
}
