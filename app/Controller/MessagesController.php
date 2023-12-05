<?php

class MessagesController extends AppController {
  public $components = array('Paginator');

  public $uses = array('Message', 'User');
public function beforeFilter() {
  parent::beforeFilter();

  $this->paginate = array(
      'limit' => 10, // Number of items per page
      'order' => array('Message.created' => 'desc') // Order by a specific field
  );
}

  public function messageList() {
        $messages = $this->paginate('Message');
        $this->set(compact('messages'));
	}

  public function newMessage() {
        if ($this->request->is('post')) {
            $this->request->data['Message']['from_id'] = $this->Auth->user('id');
            if ($this->Message->save($this->request->data)) {
                $this->redirect(array('action' => 'messageList'));
            }
        }
	}
  public function messageDetails() {
    $me = $this->Auth->user('id');

    $this->loadModel('User');
    $user = $this->User->read('id');
  
    $messages = $this->paginate('Message');
    $this->set(compact('user', 'messages'));
  }

  public function deleteMessage() {
      $this->Message->delete($this->request->data['id']);
      exit;
  }
  
}