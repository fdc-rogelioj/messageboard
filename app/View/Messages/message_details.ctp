<div class="container">
    <div class="row">
        <div class="col-md-offset-2 col-md-8">
            <h1 class="text-center">Message Details</h1>
            <div class="reply-wrapper">
				<?php 
					echo $this->Form->create('Message');
					echo $this->Form->hidden('to_id', array('value' => $user['User']['id']));
					echo $this->Form->input('content', array('label' => false, 'placeholder' => 'Write your reply', 'type' => 'textarea', 'class' => 'form-control'));
					echo $this->Form->button('Reply', array('class' => 'btn btn-primary pull-right')); 
				?>
			</div>
            <br><br>

            <div class="container">
							
                <?php foreach ($messages as $message) : ?>
                    <div class="row">
                        <div class="col-md-7">
                            <div class="panel panel-default">
                                <?php
                                $comboID = (AuthComponent::user('id') == $message['Message']['from_id']) ? $message['Message']['to_id'] : $message['Message']['from_id'];

                                 ?>
                                <div class="panel-body">
                                    <p class="message-content"><?php echo $message['Message']['content']; ?></p>
                                </div>
                                <div class="panel-heading text-right"><?php echo $message['Message']['created']; ?></div>
                                <?php echo $this->Html->link(
                                    'Delete',array('controller' => 'deleteMessage', 'action' => 'messageList', $message['Message']['id']), array('class' => 'text-danger delete-message', 'data-id' => $message['Message']['id']));
                                    ?>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
                    <?php echo $this->Paginator->prev('<< ' . __('previous'), array(), null, array('class' => 'disabled')); ?>
                    <?php echo $this->Paginator->numbers(array('separator' => '')); ?>
                    <?php echo $this->Paginator->next(__('next') . ' >>', array(), null, array('class' => 'disabled')); ?>
            </div>

						
        </div>
    </div>
</div>

<script>
        $('body').on('click', '.delete-message', function() {
        var id = $(this).data('id');
        var url = '<?php echo $this->Html->url(array('controller' => 'messages', 'action' => 'deleteMessage')); ?>';
        var $this = $(this).parents('.message-item-wrapper');
        
        if (confirm("Delete this message?")) {
            $.post(url, {id: id}, function(data) {
                $this.fadeOut();
            });
        }
        return false;
        });
</script>