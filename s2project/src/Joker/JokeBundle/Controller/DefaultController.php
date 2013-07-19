<?php

namespace Joker\JokeBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction($name)
    {
        return $this->render('JokerJokeBundle:Default:index.html.twig', array('name' => $name));
    }
}
