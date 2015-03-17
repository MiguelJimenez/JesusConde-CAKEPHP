<?php 
class Post extends AppModel
{
	public $name = 'Post'; // Variable $name usada para sobreescribir nombres de clase PHP4

	public $validate = array(
		'title'	=> array(
			'rule' => 'notEmpty'
			),
		'body' => array(
			'rule' => 'notEmpty'
			)
		);
}



 ?>