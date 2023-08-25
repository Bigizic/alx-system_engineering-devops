# using puppet i will install flask version 2.1.0
# class definition encapsulates the package n service
class install_a_package {
  package { 'Flask':
    ensure   => '2.1.0',
    provider => 'pip3',
  }
}

include install_a_package
