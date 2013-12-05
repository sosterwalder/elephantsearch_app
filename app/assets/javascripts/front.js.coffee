# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#= require three


$(document).ready -> 
	scene = new THREE.Scene()
	camera = new THREE.PerspectiveCamera(75, window.innerWidth / window.innerHeight, 0.1, 1000)
	renderer = new THREE.WebGLRenderer()
	
	renderer.setSize(window.innerWidth, window.innerHeight);
	$("body").append renderer.domElement
	
	geometry = new THREE.CubeGeometry(1, 1, 1)
	material = new THREE.MeshBasicMaterial(color: 0x00ff00)
	cube = new THREE.Mesh(geometry, material)
	scene.add cube
	camera.position.z = 5
	render = ->
	  requestAnimationFrame render
	  cube.rotation.x += 0.1
	  cube.rotation.y += 0.1
	  renderer.render scene, camera
	
	render()

$(document).ready -> alert 'juhuuuu'
