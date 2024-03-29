import consumer from "./consumer"

const initGameCable = () => {
  const memesContainer = document.getElementById('memes');
  if (memesContainer) {
    const id = memesContainer.dataset.gameId;

    consumer.subscriptions.create({ channel: "GameChannel", id: id }, {
      received(data) {
        memesContainer.insertAdjacentHTML('beforeend', data)
        // console.log(data); // called when data is broadcast in the cable
      },
    });
  }
}

export { initGameCable };a