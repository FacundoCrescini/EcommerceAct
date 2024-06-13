import React, { createContext, useContext, useState, useEffect, ReactNode } from 'react';

type Articulo = {
  id: number;
  tipo: 'articulo';
  denominacion: string;
  precioVenta: number;
  descripcion: string;
  url: string;
  cantidad: number;
  imagenes: { id: number, url: string }[];
  stock: number;
};

type Promocion = {
  id: number;
  tipo: 'promocion';
  denominacion: string;
  fechaDesde: string;
  fechaHasta: string;
  horaDesde: string;
  horaHasta: string;
  descripcionDescuento: string;
  precioPromocional: number;
  tipoPromocion: string;
  articulos: Articulo[] | null;
  cantidad: number;
  imagenes: { id: number, url: string }[];
};

type CartItem = Articulo | Promocion;

type CartContextType = {
  cart: CartItem[];
  addToCart: (item: CartItem) => void;
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

  const addToCart = (item: CartItem) => {
    setCart((prevCart) => {
      const existingItem = prevCart.find(cartItem => cartItem.id === item.id && cartItem.tipo === item.tipo);
      if (existingItem) {
        return prevCart.map(cartItem =>
          cartItem.id === item.id && cartItem.tipo === item.tipo
            ? { ...cartItem, cantidad: cartItem.cantidad + 1 }
            : cartItem
        );
      } else {
        return [...prevCart, { ...item, cantidad: 1 }];
      }
    });
  };

  const removeFromCart = (id: number) => {
    setCart((prevCart) => prevCart.filter(item => item.id !== id));
  };

  const updateQuantity = (id: number, cantidad: number) => {
    setCart((prevCart) => prevCart.map(item => {
      if (item.id === id) {
        return { ...item, cantidad };
      }
      return item;
    }));
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
