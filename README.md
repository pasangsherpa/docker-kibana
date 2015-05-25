# kibana

> Dockerized Kibana. [Kibana | Explore & Visualize Your Data][4]

If you want the whole ELK stack, checkout [elk-stack](https://github.com/pasangsherpa/elk-stack).

## Use the [pre-built image][8] from Docker Hub Registry.

1. Start the instance.

	```
	$ docker run --name kibana -p 5601:5601 pasangsherpa/kibana
	```

2. Start the instance by passing in custom config. The config volume should include 'kibana.yml' file.

	```
	$ docker run --name kibana -p 5601:5601 -v "$PWD/config":/opt/kibana/config pasangsherpa/kibana
	```

3. Go to [http://localhost:5601](http://localhost:5601) to verify kibana is running.

===

## Installation and Setup

1. First, Install [Docker][1] **OR** Install [Vagrant][6] and [Virtualbox][7].

2. Next, clone the project.

    ```
    $ git@github.com:pasangsherpa/kibana.git
    ```

## Configure 

1. [Kibana][4] configuration file can be found under 'config' folder. Make changes to the 'kibana.yml' file as per your need.


## Build and run Kibana with [Vagrant][6]

    ```
    $ cd kibana
    $ vagrant up
    ```


## Build and run Kibana without [Vagrant][6]

    ```
    $ cd kibana
    $ docker build -t kibana .
    $ docker run kibana        # Run in foreground    
    $ docker run kibana -d     # Run in background
    ```

## Verify
1. Go to [http://localhost:5601](http://localhost:5601) to verify kibana is running.


## License

[MIT](http://opensource.org/licenses/MIT) © [Pasang Sherpa](https://github.com/pasangsherpa)

[1]: https://docs.docker.com/compose/install/
[2]: https://www.elastic.co/products/elasticsearch
[3]: https://www.elastic.co/products/logstash
[4]: https://www.elastic.co/products/kibana
[5]: https://www.elastic.co/guide/en/logstash/current/plugins-inputs-lumberjack.html
[6]: http://www.vagrantup.com/downloads.html
[7]: https://www.virtualbox.org/wiki/Downloads
[8]: https://registry.hub.docker.com/u/pasangsherpa/kibana/