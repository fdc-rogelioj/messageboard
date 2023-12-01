<div class="container">
    <div class="row">
        <div class="col-md-offset-2 col-md-8">
            <h1 class="text-center">Message List</h1>

						<?php echo $this->Html->link('New Message', array('action' => 'newMessage'), array('class' => 'btn btn-primary pull-right')); ?>
            <br><br>

            <div class="container">
							
                <?php foreach ($messages as $message) : ?>
                    <div class="row">
                        <div class="col-md-8">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <p class="message-content"><?php echo $message['Message']['content']; ?></p>
                                </div>
                                <div class="panel-heading"><?php echo $message['Message']['created']; ?></div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>

						<div class="message-item-content">
								<div class="message-item-content-top"><?php echo $message['Message']['content']; ?></div>
								<div class="message-item-content-bottom">
									<span class="text-danger delete-message" data-id="<?php echo $comboID; ?>">Delete</span>
									<?php echo $this->Html->link('view', array('action' => 'messageDetails', $comboID), array('class' => 'view-message')) ?>
									From: <?php echo $message['User']['name']; ?> To: <?php echo AuthComponent::user('name'); ?>
									<span class="pull-right"><?php echo $message['Message']['created']; ?></span>
								</div>
							</div>
						</div>
        </div>
    </div>
</div>