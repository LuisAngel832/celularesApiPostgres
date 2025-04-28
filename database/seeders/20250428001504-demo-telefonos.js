'use strict';

module.exports = {
  async up (queryInterface, Sequelize) {
    await queryInterface.bulkInsert('Telefonos', [
      {
        marca: 'Samsung',
        modelo: 'Galaxy S24',
        precio: 899,
        descripcion: 'Teléfono gama alta de Samsung',
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        marca: 'Apple',
        modelo: 'iPhone 15',
        precio: 1099,
        descripcion: 'Último modelo de Apple',
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        marca: 'Xiaomi',
        modelo: 'Mi 13',
        precio: 599,
        descripcion: 'Alta calidad a buen precio',
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        marca: 'Motorola',
        modelo: 'Edge 40',
        precio: 499,
        descripcion: 'Motorola Edge 40 edición especial',
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        marca: 'OnePlus',
        modelo: '11R',
        precio: 649,
        descripcion: 'Potencia y diseño premium',
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        marca: 'Huawei',
        modelo: 'P60 Pro',
        precio: 899,
        descripcion: 'Fotografía profesional',
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        marca: 'Google',
        modelo: 'Pixel 8',
        precio: 799,
        descripcion: 'Experiencia Android pura',
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        marca: 'Realme',
        modelo: 'GT Neo 5',
        precio: 399,
        descripcion: 'Rendimiento bestial',
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        marca: 'Oppo',
        modelo: 'Find X6',
        precio: 899,
        descripcion: 'Diseño innovador',
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        marca: 'Vivo',
        modelo: 'X90 Pro',
        precio: 999,
        descripcion: 'Top en fotografía nocturna',
        createdAt: new Date(),
        updatedAt: new Date()
      }
    ], {});
  },

  async down (queryInterface, Sequelize) {
    await queryInterface.bulkDelete('Telefonos', null, {});
  }
};
