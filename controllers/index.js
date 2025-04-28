const models = require("../database/models");
const createPhone = async (req, res) => {
    try {
      const phone = await models.Telefonos.create(req.body);
      return res.status(201).json({ phone });
    } catch (error) {
      return res.status(500).json({ error: error.message });
    }
  };
  
  const getAllPhones = async (req, res) => {
    try {
      const phones = await models.Telefonos.findAll();
      return res.status(200).json({ telefonos: phones });
    } catch (error) {
      return res.status(500).json({ error: error.message });
    }
  };
  
  const updatePhone = async (req, res) => {
    try {
      const { id } = req.params;
      const [updated] = await models.Telefonos.update(req.body, {
        where: { id }
      });
  
      if (updated) {
        const updatedPhone = await models.Telefonos.findByPk(id);
        return res.status(200).json({ phone: updatedPhone });
      }
      throw new Error('Teléfono no encontrado');
    } catch (error) {
      return res.status(500).json({ error: error.message });
    }
  };
  
  const deletePhone = async (req, res) => {
    try {
      const { id } = req.params;
      const deleted = await models.Telefonos.destroy({
        where: { id }
      });
  
      if (deleted) {
        return res.status(200).json({ message: 'Teléfono eliminado' });
      }
      throw new Error('Teléfono no encontrado');
    } catch (error) {
      return res.status(500).json({ error: error.message });
    }
  };
  

module.exports = {
  createPhone,
  getAllPhones,
  updatePhone,
  deletePhone
};
