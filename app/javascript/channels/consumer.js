// Action Cable provides the framework to deal with WebSockets in Rails.
// You can generate new channels where WebSocket features live using the `bin/rails generate channel` command.

import { createConsumer } from "@rails/actioncable"
(function() {
    this.App || (this.App = {});

    App.cable = ActionCable.createConsumer($('meta[name=action-cable-url]').attr('content'));
}).call(this);
export default createConsumer()
