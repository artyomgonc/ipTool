use Socket;
use Term::ANSIColor;
use WWW::Mechanize;
use JSON;

@iphost=$ARGV[0];
my @ip = inet_ntoa(scalar gethostbyname("@iphost")or die "!IP or Host invalid or you did not input it!\n\n\n");
my @hn = scalar gethostbyaddr(inet_aton(@ip),AF_INET);
 
my $GET=WWW::Mechanize->new();
    $GET->get("http://ip-api.com/json/@ip");
    my $json = $GET->content();
 
my $info = decode_json($json);

print color 'bold yellow';

print "\n";
print "\n";
print "\n";
print "        IP: ", $info->{'query'}, "\n";
print "------------------------------------\n"; 
print color 'bold bright_green';
print "  [+] Organization: ", $info->{'org'}, "\n";
print "      Provider: ", $info->{'isp'}, "\n";
print "\n";
print "  [+] Country: ", $info->{'country'}," (", $info->{'countryCode'},")", "\n";
print "      Region: ", $info->{'regionName'}, " (" , $info->{'region'},")", "\n";
print "      City: ", $info->{'city'}, "\n";
print "\n";
print "  [+] Geolocation: ", "Latitude: " , $info->{'lat'}, "\n";
print "                   ", "Longitude: ", $info->{'lon'}, "\n";
print "\n";
print "  [+] Timezone: ", $info->{'timezone'}, "\n";
print "\n";
print "\n";
print "\n";

print color 'reset';
