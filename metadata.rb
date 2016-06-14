maintainer       "mapzen"
maintainer_email "baldur@mapzen.com"
license          "MIT"
description      "configures additional ecs settings."

name 'mapzen_ecs'
recipe 'mapzen_ecs::fluentd',            'enables fluentd logdriver'  
recipe 'mapzen_ecs::restart_ecs_agent',  'restarts ecs agent'  
