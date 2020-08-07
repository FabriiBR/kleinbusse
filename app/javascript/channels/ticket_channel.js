import consumer from "./consumer"

const initTicketCable = () => {
  const messagesContainer = document.getElementById('tickets');
  if(messagesContainer){
    const id = messagesContainer.dataset.ticketId;

    consumer.subscriptions.create({ channel: "TicketChannel", id:id},{
      received(data) {
        console.log(data);
      },
    });
  }
}

export { initTicketCable };