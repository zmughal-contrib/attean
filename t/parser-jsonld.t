use v5.14;
use autodie;
use utf8;
use Test::More;
use Test::Exception;
use FindBin qw($Bin);
use File::Glob qw(bsd_glob);
use File::Spec;

use Attean;
use Type::Tiny::Role;

{
	my $parser	= Attean->get_parser('JSONLD')->new();
	isa_ok($parser, 'AtteanX::Parser::JSONLD');
	my $type	= $parser->handled_type;
	can_ok($type, 'role');
	is($type->role, 'Attean::API::Triple');
}

done_testing();
