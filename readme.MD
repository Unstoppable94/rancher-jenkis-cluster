dir usage:

*basewithplugins: jenkins offical image plus plugins

*server winhong: jenkins server

    * include two users: admin and jenkins, password of admin is admin, password of jenkins is w12sedwiokd

    * include jdk and maven setting 

    when upgarde jenkins,please:
    1. keep jdk and maven setting via tools config gui :/ConfigTools
    2. set master node not to run job :/computer/(master)/configure
*jenkins-slave: jenkins swarm client base on ubuntu 16.4 

     * include jdk 1.7 & 1.8

     * include maven 2.1 * 3.3.9