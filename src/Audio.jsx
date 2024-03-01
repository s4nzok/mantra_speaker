import React, { useRef } from 'react';

const Audio = ({ src }) => {
  const audioRef = useRef(null);

  const playSound = () => {
    audioRef.current.play();
  };

  return (
    <audio ref={audioRef}>
      <source src={src} type="audio/mpeg" />
      Your browser does not support the audio Element. 
      Your browser does not support the audio Element. 
      Your browser does not support the audio Element. 

    </audio>
  );
};

export default Audio;
