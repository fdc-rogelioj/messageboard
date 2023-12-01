<?php echo $this->Flash->render(); ?>

<div class="container">
	<div class="row">
		<div class="col-md-offset-4 col-md-4 ">
			<h1 class="text-center">Login</h1>

			<?php 
				echo $this->Form->create('User');
				echo $this->Form->input('email', ['class' => 'form-control']);
				echo $this->Form->input('password', ['class' => 'form-control']);
				echo $this->Form->button('Login', ['class' => 'btn btn-primary btn-block']); 
			?>
		</div>
	</div>
</div>