<?php 
class PostsController extends AppController
{

	public $name = 'Posts'; // Variable $name usada para sobreescribir nombres de clase PHP4

	public $helpers = array('Html', 'Form');

	public function index()
	{
		$this->set('posts', $this->Post->find('all'));

		/*Método set se utiliza para indicar a la vista qué es lo que se tiene que mostrar
		Tiene 2 parámetros:
		1º. Nombre de la vista donde se va a mostrar el resultado
		2º. El resultado de llamar al método findAll('')
		*/
	}

		public function view($id = null)
		{
			$this->Post->id = $id;
			$this->set('post', $this->Post->read());
		}

		public function add()
		{
			if ($this->request->is('post'))
			{
				if ($this->Post->save($this->request->data))
				{
					$this->Session->setFlash('Your post has been saved.');
					$this->redirect(array('action' => 'index'));
				}
			}
		}

		public function edit($id = null)
		{
			if (!$id)
			{
				throw new NotFoundException(__('Invalid post'));
			}

			$post = $this->Post->findById($id);
			if (!$post)
			{
				throw new NotFoundException(__('Invalid post'));
			}

			if ($this->request->is(array('post', 'put')))
			{
				$this->Post->id = $id;
				if ($this->Post->save($this->request->data))
				{
					$this->Session->setFlash(__('Your post has been updated.'));
					return $this->redirect(array('action' => 'index'));
				}
				$this->Session->setFlash(__('Unable to update your post.'));
			}

			if (!$this->request->data) {
				$this->request->data = $post;
			}
		}

		function delete($id)
		{
			if (!$this->request->is('post'))
			{
				throw new MethodNotAllowedException();
			}
			if ($this->Post->delete($id))
			{
				$this->Session->setFlash('The post with id: ' . $id . ' has been deleted.');
				$this->redirect(array('action' => 'index'));
			}
		}
}
?>