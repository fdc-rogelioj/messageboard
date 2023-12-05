<?php

App::uses('AppController', 'Controller');

class UsersController extends AppController 
{
    public $components = ['Paginator'];

    public function beforeFilter() {
        $this->Auth->allow('register');
    }

    public function register() {
        if ($this->request->is('post')) {
            $this->request->data['User']['created_ip'] = $this->request->clientIp();
            if ($this->User->save($this->request->data) && $this->Auth->login()) {
                $this->User->id = $this->Auth->user('id');
                $this->User->saveField('last_login_time', date('Y-m-d H:i:s'));
                $this->redirect(['action' => 'thankYou']);
            } else {
                $this->Session->setFlash(__('Registration failed. Please review the following errors and correct them before proceeding.'));
            }
        }
    }
    public function login() {
        if ($this->request->is('post') && $this->Auth->login()) {
            $this->User->id = $this->Auth->user('id');
            $this->User->saveField('last_login_time', date('Y-m-d H:i:s'));
            $this->redirect(['controller' => 'messages', 'action' => 'messageList']);
        }
        if ($this->request->is('post')) {
            if ($this->Auth->login()) {
                $this->User->id = $this->Auth->user('id');
                $this->User->saveField('last_login_time', date('Y-m-d H:i:s'));
                $this->redirect(['controller' => 'messages', 'action' => 'messageList']);
            } else {
                $this->Session->setFlash(__('Incorrect Email or Password.'));
            }
        }
    }

    public function logout() {
        $this->Auth->logout();
        $this->redirect(['action' => 'login']);
    }

    public function thankYou() {

    }

    public function profile() {

    }

    public function editProfile() {
    if ($this->request->is('post')) {
        $data = array();
        $ip = $this->request->clientIp();

        if (!empty($this->request->data['User']['name'])) {
            $name = $this->request->data['User']['name'];
            $data['name'] = "'$name'";
        }
        if (!empty($this->request->data['User']['birthdate'])) {
            $birthdate = $this->request->data['User']['birthdate'];
            $data['birthdate'] = "'$birthdate'";
        }
        if (!empty($this->request->data['User']['gender'])) {
            $gender = $this->request->data['User']['gender'];
            $data['gender'] = "'$gender'";
        }
        if (!empty($this->request->data['User']['hubby'])) {
            $hubby = $this->request->data['User']['hubby'];
            $data['hubby'] = "'$hubby'";
        }
        $data['modified_ip'] = "'$ip'";

        $this->User->updateAll($data, array('id' => $this->Auth->user('id')));
        $this->Session->write('Auth', $this->User->read(null, $this->Auth->user('id')));
        $this->redirect(array('action' => 'profile'));
    }
	}

    public function getUsers() {
        $key = $this->request->query['key'];
        $users = $this->User->find('all', array('conditions' => array('User.name LIKE' => '%'.$key.'%')
        ));

        $data = array();
        foreach ($users as $index => $user) {
            $data[$index]['id'] = (int) $user['User']['id'];
            $data[$index]['text'] = $user['User']['name'];
        }
        
        echo json_encode($data);
        exit;
    }
}
