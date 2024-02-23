<?php
session_start(["cookie_lifetime" => 60*60*24]); //start cookies maar onthoud server ipv local zodat gebruiek niet bij kan :D, duur: LANG

if (isset($_SESSION ['login']) == false) {//bestaat deze var als bestaat: tRue anders False;
    $_SESSION['login'] = false;
}