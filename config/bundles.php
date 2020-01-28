<?php

use Snc\RedisBundle\SncRedisBundle;
use TweedeGolf\PrometheusBundle\TweedeGolfPrometheusBundle;

return [
    Symfony\Bundle\FrameworkBundle\FrameworkBundle::class => ['all' => true],
    Doctrine\Bundle\DoctrineBundle\DoctrineBundle::class => ['all' => true],
    Doctrine\Bundle\MigrationsBundle\DoctrineMigrationsBundle::class => ['all' => true],
    Symfony\Bundle\MonologBundle\MonologBundle::class => ['all' => true],
    TweedeGolfPrometheusBundle::class => ['all' => true],
    SncRedisBundle::class => ['all' => true]
];
