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

function add(scheme) {
    return db('schemes').insert( scheme)
}

module.exports = {
    find,
    findById,
    remove,
    add
}