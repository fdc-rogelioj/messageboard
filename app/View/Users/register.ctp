<?php echo $this->Session->flash(); ?>

<div class="container">
	<div class="row">
		<div class="col-md-offset-3 col-md-6">
			<h1 class="text-center">Registration</h1>

			<?php 
				echo $this->Form->create('User');
				echo $this->Form->input('name', ['class' => 'form-control']);
				echo $this->Form->input('email', ['class' => 'form-control']);
				echo $this->Form->input('password', ['class' => 'form-control']);
				echo $this->Form->input('confirm_password', ['type' => 'password', 'class' => 'form-control']);
				echo $this ->Form->button('Submit', ['class' => 'btn btn-primary btn-block']);
			?>	
		</div>	
	</div>
</div>