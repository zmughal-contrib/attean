use v5.14;
use warnings;

# AtteanX::Parser::JSONLD
# -----------------------------------------------------------------------------
package AtteanX::Parser::JSONLD {
	use Moo;
	use Attean::API::Parser;

=item C<< canonical_media_type >>

Returns the canonical media type for JSON-LD: application/ld+json

=cut

	sub canonical_media_type { return "application/ld+json" }

=item C<< media_types >>

Returns a list of media types that may be parsed with the JSON-LD parser:
application/ld+json.

=cut

	sub media_types {
		return [qw(application/ld+json)];
	}

=item C<< file_extensions >>

Returns a list of file extensions that may be parsed with the parser.

=cut

	sub file_extensions { return [qw(jsonld)] }

	with 'Attean::API::TripleParser';
	with 'Attean::API::AbbreviatingParser';
	with 'Attean::API::AtOnceParser';

	sub parse_list_from_io {
		...
	}

	sub parse_list_from_bytes {
		...
	}
};


1;
