requires 'perl', '5.00600';

requires 'Exporter', '0.00';

on test => sub {
  requires 'Test::More', '0.88';
};

on 'develop' => sub {
  requires 'Test::Pod::Coverage';
  requires 'Test::Pod',  '1.00';
  requires 'Encode',     '0.00';
};