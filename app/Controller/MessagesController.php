<?php

class MessagesController extends AppController {
    public $components = array('Paginator');
    public $limit = 10;
	public function messageList()
	{
        $messages = $this->paginate('Message');
        $this->set(compact('messages'));
	}

  public function newMessage()
	{
        if ($this->request->is('post')) {
            $this->request->data['Message']['from_id'] = $this->Auth->user('id');
            if ($this->Message->save($this->request->data)) {
                $this->redirect(array('action' => 'messageList'));
            }
        }
	}
  public function moreMessageList($count = 0) {
    $userID = $this->Auth->user('id');

    $this->paginate = array('Message' => array(
        'conditions' => array(
            "Message.id IN
            (SELECT max(id)
                FROM messages
                WHERE
                    (Message.from_id = {$userID}) ||
                    (Message.to_id = {$userID})
                GROUP BY 
                    IF (from_id = {$userID}, to_id, from_id),
                    IF (from_id != {$userID}, to_id, from_id))"
        ),
        'order' => 'created DESC',
        'limit' => $this->limit,
        'offset' => $count,
    ));

    if ($this->request->is('ajax')) {
        $messages = $this->paginate('Message');
        $this->layout = false;
        $this->set(compact('messages'));
    }
}

}

