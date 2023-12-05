<?php echo $this->Flash->render(); ?>

<div class="container">
	<div class="row">
		<div class="col-md-offset-2 col-md-8">
			<h1 class="text-center">Edit User Profile</h1>

			<?php echo $this->Form->create('User', array('type' => 'file')) ?>
			<div>

				<div class="profile-hubby">
					<?php 
						echo $this->Form->input('name', array('class' => 'form-control', 'value' => AuthComponent::user('name')));
						echo $this->Form->input('birthdate', array('id' => 'datepicker', 'type' => 'text', 'class' => 'form-control', 'value' => AuthComponent::user('birthdate')));
						echo $this->Form->input('gender', 
	                        array(
	                        	'separator' => '<div class="gender"></div>',
	                            'type' => 'radio', 
	                            'options' => array(1 => 'Male', 2 => 'Female'),
	                            'value' => AuthComponent::user('gender'),
	                        )
						); 
						echo $this->Form->input('hubby', array('type' => 'textarea', 'class' => 'form-control', 'value' => AuthComponent::user('hubby')));
			    		echo $this->Form->button('Update', array('class' => 'btn btn-primary btn-block')); 
			    	?>
				</div>
			</div>
		</div>	
	</div>
</div>

<script>
    $(document).ready(function() {
      $('#datepicker').datepicker({
        dateFormat: "yy-mm-dd",
        changeYear: true,
        changeMonth: true,
        showButtonPanel: true,
        yearRange: '-40y:c', // Restrict to the last 10 years
        onClose: function(dateText, inst) {
          var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
          var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
          $(this).datepicker('setDate', new Date(year, month, 1));
        }
      });

      $('body').on('change', '.edit-profile', function() {
        if (this.files && this.files[0]) {
          var reader = new FileReader();
          
          reader.onload = function(e) {
            $('.user-profile').attr('src', e.target.result);
          };

          reader.readAsDataURL(this.files[0]);
        }
      });
    });
</script>
