use strict ;

package pt_online_schema_change_plugin ;

sub new {
   my ($class, %args) = @_;
   my $self = { %args };
   return bless $self, $class;
}

sub before_swap_tables {
    my ($self, %args) = @_;
    TABLE_SWAP_CONFIRMATION:
    print "Please type 'yes' to confirm table swap or 'no' to exit: ";
    my $input = <STDIN>;
    if ( $input eq "yes\n" ) {
      print "Table swap was confirmed\n";
      return;
    } elsif ( $input eq "no\n" ) {
      print "Table was NOT confirmed. Exiting now... Do not forget to cleanup\n";
      exit 1;
    } else {
      goto TABLE_SWAP_CONFIRMATION;
    }
}
1 ;