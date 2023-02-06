#!/usr/bin/perl

# function to calculate the derivative of the differential equation
sub f {
  my ($x, $y) = @_;
  return $x + $y;
}

# initial values
my $x0 = 0;
my $y0 = 1;

# step size
my $h = 0.1;

# end value of x
my $xf = 1;

# loop to iterate over the values of x
for (my $x = $x0; $x <= $xf; $x += $h) {
  my $k1 = $h * f($x, $y0);
  my $k2 = $h * f($x + $h, $y0 + $k1);
  my $y = $y0 + ($k1 + $k2) / 2;
  $y0 = $y;
}

# print the final value of y
print $y, "\n";
