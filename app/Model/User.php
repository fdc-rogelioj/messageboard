<?php

App::uses('AppModel', 'Model');
App::uses('BlowfishPasswordHasher', 'Controller/Component/Auth');

class User extends AppModel {
	public $validate = array(
        'name' => array(
            'rule' => array('lengthBetween', 5, 20),
            'message' => 'Between 5 to 20 characters only'
        ),
        'email' => array(
            'required' => array(
                'rule' => array('email'),
                'message' => 'Email is required.'
            ),
            'unique' => array(
                'rule' => 'isUnique',
                'message' => 'Email is already exist.'
            )
        ),
        'password' => array(
            'compare' => array(
                'rule' => array('compare_password'),
                'message' => 'Password does not match!'
            )
        ),
        'confirm_password' => array(
            'compare' => array(
                'rule' => array('compare_password'),
                'message' => 'Password does not match!'
            )
        )
	);

    public function compare_password() {
        return $this->data[$this->alias]['password'] === $this->data[$this->alias]['confirm_password'];
    }

    public function beforeSave($options = array()) {
        if (!$this->password) {
            $this->data[$this->alias]['password'] = AuthComponent::password($this->data[$this->alias]['password']);
        }
        
        return true;
    }
}