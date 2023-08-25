# using puppet i will install flask version 2.1.0
# class definition encapsulates the package n service
package { 'Flask':
ensure   => '2.1.0',
provider => 'pip3',
}
