import React, { useState, useRef, useEffect } from 'react';
import './SlideToConfirm.css';

const SlideToConfirm = ({ onConfirm, text = "Slide to confirm", successText = "Confirmed", resetDelay = 3000 }) => {
  const [sliderValue, setSliderValue] = useState(0);
  const [isConfirmed, setIsConfirmed] = useState(false);
  const [isSliding, setIsSliding] = useState(false);
  const containerRef = useRef(null);
  const thumbRef = useRef(null);
  const timeoutRef = useRef(null);

  const handleDragStart = (e) => {
    if (isConfirmed) return;
    setIsSliding(true);
  };

  const handleDragMove = (e) => {
    if (!isSliding || isConfirmed) return;
    
    let clientX;
    if (e.type.includes('mouse')) {
      clientX = e.clientX;
    } else if (e.type.includes('touch')) {
      clientX = e.touches[0].clientX;
    }

    const containerRect = containerRef.current.getBoundingClientRect();
    const thumbRect = thumbRef.current.getBoundingClientRect();
    
    const maxSlide = containerRect.width - thumbRect.width;
    let newSlide = clientX - containerRect.left - (thumbRect.width / 2);
    
    if (newSlide < 0) newSlide = 0;
    if (newSlide > maxSlide) newSlide = maxSlide;
    
    const newValue = (newSlide / maxSlide) * 100;
    setSliderValue(newValue);
    
    if (newValue >= 95) {
      setIsConfirmed(true);
      setSliderValue(100);
      setIsSliding(false);
      onConfirm();
      
      // Auto reset after some time
      if (resetDelay) {
        timeoutRef.current = setTimeout(() => {
          setIsConfirmed(false);
          setSliderValue(0);
        }, resetDelay);
      }
    }
  };

  const handleDragEnd = () => {
    if (isConfirmed) return;
    setIsSliding(false);
    if (sliderValue < 95) {
      setSliderValue(0);
    }
  };

  useEffect(() => {
    if (isSliding) {
      window.addEventListener('mousemove', handleDragMove);
      window.addEventListener('mouseup', handleDragEnd);
      window.addEventListener('touchmove', handleDragMove, { passive: false });
      window.addEventListener('touchend', handleDragEnd);
    } else {
      window.removeEventListener('mousemove', handleDragMove);
      window.removeEventListener('mouseup', handleDragEnd);
      window.removeEventListener('touchmove', handleDragMove);
      window.removeEventListener('touchend', handleDragEnd);
    }
    
    return () => {
      window.removeEventListener('mousemove', handleDragMove);
      window.removeEventListener('mouseup', handleDragEnd);
      window.removeEventListener('touchmove', handleDragMove);
      window.removeEventListener('touchend', handleDragEnd);
    };
  }, [isSliding, sliderValue]);

  useEffect(() => {
    return () => {
      if (timeoutRef.current) {
        clearTimeout(timeoutRef.current);
      }
    };
  }, []);

  return (
    <div className={`slide-container ${isConfirmed ? 'confirmed' : ''}`} ref={containerRef}>
      <div 
        className="slide-progress" 
        style={{ width: `${sliderValue}%` }}
      ></div>
      <div className="slide-text">
        {isConfirmed ? successText : text}
      </div>
      <div 
        className="slide-thumb" 
        ref={thumbRef}
        style={{ left: `calc(${sliderValue}% - ${sliderValue / 100 * 32}px)` }}
        onMouseDown={handleDragStart}
        onTouchStart={handleDragStart}
      >
        {isConfirmed ? (
           <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5"><polyline points="20 6 9 17 4 12"></polyline></svg>
        ) : (
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5"><polyline points="9 18 15 12 9 6"></polyline></svg>
        )}
      </div>
    </div>
  );
};

export default SlideToConfirm;
