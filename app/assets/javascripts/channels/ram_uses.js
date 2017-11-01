App.ram_uses = App.cable.subscriptions.create('RamUsesChannel', {
  received: function(data) {
    $("#ram_uses").removeClass('hidden')
    return $('#ram_uses').append(this.renderMessage(data));
  },

  renderMessage: function(data) {
    return "<p> <b>" + data.value + ": </b>" + data.created_at + "</p>";
  }
});
