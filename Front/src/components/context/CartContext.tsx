import React, { createContext, useContext, useState, useEffect, ReactNode } from 'react';

type Articulo = {
  id: number;
  denominacion: string;
  precioVenta: number;
  descripcion: string;
  url: string;
};

type CartItem = Articulo & { cantidad: number };

type CartContextType = {
  cart: CartItem[];
  addToCart: (articulo: Articulo) => void;
  removeFromCart: (id: number) => void;
  updateQuantity: (id: number, cantidad: number) => void;
  clearCart: () => void;
};

const CartContext = createContext<CartContextType | undefined>(undefined);

export const CartProvider: React.FC<{ children: ReactNode }> = ({ children }) => {
  const [cart, setCart] = useState<CartItem[]>(() => {
    const storedCart = localStorage.getItem('cart');
    return storedCart ? JSON.parse(storedCart) : [];
  });

  useEffect(() => {
    localStorage.setItem('cart', JSON.stringify(cart));
  }, [cart]);

  const addToCart = (articulo: Articulo) => {
    setCart((prevCart) => {
      const existingItem = prevCart.find(item => item.id === articulo.id);
      if (existingItem) {
        return prevCart.map(item =>
          item.id === articulo.id ? { ...item, cantidad: item.cantidad + 1 } : item
        );
      } else {
        return [...prevCart, { ...articulo, cantidad: 1 }];
      }
    });
  };

  const removeFromCart = (id: number) => {
    setCart((prevCart) => prevCart.filter(item => item.id !== id));
  };

  const updateQuantity = (id: number, cantidad: number) => {
    setCart((prevCart) => prevCart.map(item =>
      item.id === id ? { ...item, cantidad } : item
    ));
  };

  const clearCart = () => {
    setCart([]);
  };

  return (
    <CartContext.Provider value={{ cart, addToCart, removeFromCart, updateQuantity, clearCart }}>
      {children}
    </CartContext.Provider>
  );
};

export const useCart = () => {
  const context = useContext(CartContext);
  if (!context) {
    throw new Error('useCart must be used within a CartProvider');
  }
  return context;
};
