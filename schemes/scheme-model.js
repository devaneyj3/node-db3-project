const db = require('../data/db-config');

function find() {
    return db('schemes')
}

function findById(id) {
    return db('schemes').where({id}).first()
}

function remove(id) {
    return db('schemes').where({id}).del()
}

module.exports = {
    find,
    findById,
    remove
}