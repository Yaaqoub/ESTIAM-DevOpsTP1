module.exports = function(sequelize, Sequelize) {

    return sequelize.define('main', {

        id: {
            type: Sequelize.UUID,
            defaultValue: Sequelize.UUIDV1,
            primaryKey: true
        },

        counter: {
            type: Sequelize.STRING,
            notEmpty: true
        }
    },{
        underscored: true
    });
};