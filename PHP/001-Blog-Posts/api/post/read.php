<?php
	// Headers
	header('Access-Control-Allow-Origin: *');
	header('Content-Type: application/json');

	include_once '../../config/Database.php';
	include_once '../../models/Post.php';

	// Instantiate DB & connect
	$database = new Database();
	$db = $database -> connect();

	// Instantiate blog post object
	$post = new Post($db);

	// Blog post query
	$result = $post -> read();
	// Get row count
	$number = $result -> rowCount();

	// Check if any posts
	if ($number > 0) {
		// Post array
		$posts_array = array();
		$posts_array['data'] = array();

		while($row = $result -> fetch(PDO::FETCH_ASSOC)) {
			extract($row);

			$post_item = array(
				'id' => $id,
				'title' => $title,
				'body' => $body,
				'author' => $author,
				'category_id' => $category_id,
				'category_name' => $category_name
			);

			// Pust to "data"
			array_push($posts_array['data'], $post_item);
		}

		// Turn to JSON & output
		echo json_encode($posts_array);
	} else {
		// No Posts
		echo json_encode(
			array('message' => 'No Posts Found')
		);
	}