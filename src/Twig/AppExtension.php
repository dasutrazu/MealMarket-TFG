<?php
// src/Twig/AppExtension.php

namespace App\Twig;

use Twig\Extension\AbstractExtension;
use Twig\TwigFilter;

class AppExtension extends AbstractExtension
{
    public function getFilters(): array
    {
        return [
            new TwigFilter('estrellas', [$this, 'convertirAEstrellas']),
        ];
    }

    public function convertirAEstrellas(int $valoracion): string
    {
        $estrellas = '';
        for ($i = 1; $i <= 5; $i++) {
            if ($i <= $valoracion) {
                $estrellas .= '★'; // Estrella llena
            } else {
                $estrellas .= '☆'; // Estrella vacía
            }
        }
        return $estrellas;
    }
}
