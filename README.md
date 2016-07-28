<h1>Private Events</h1>

<p>This is a project from <a href="http://www.theodinproject.com/ruby-on-rails/associations">The Odin Project</a>. It is specifically an excercise on rails' associations, and many to many relationships.</p>

<br>

<h2>The outline</h2>
<p>
	You want to build a site similar to a private Eventbrite which allows users to create events and then manage user signups. Users can create events and send invitations and parties (sound familiar?). Events take place at a specific date and at a location (which you can just store as a string, like "Andy's House").
</p>

<p>
	A user can create events. A user can attend many events. An event can be attended by many users. This will require you to model many-to-many relationships and also to be very conscious about your foreign keys and class names (hint: you won't be able to just rely on Rails' defaults like you have before).
</p>