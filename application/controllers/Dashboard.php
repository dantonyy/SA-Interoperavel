<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
        $this->load->model('login_model');
        $this->load->model('dashboard_model');
    }
    
    public function index(){

        $this->load->view('includes/dashboard_header');
        $this->load->view('dashboard/dashboard.php');
        $this->load->view('includes/dashboard_footer.php');
        $this->load->view('includes/html_footer_full.php');
    }

}

?>
