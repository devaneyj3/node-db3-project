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

function update(changes, id) {
    return db('schemes').where({ id }).update( changes)
}

function findSteps(id) {
    return db('steps as st')
        .join('schemes as s', 's.id', 'st.scheme_id').select('st.id', 's.scheme_name', 'st.step_number', 'st.instructions').where( 'st.scheme_id', id)
}

module.exports = {
    find,
    findById,
    remove,
    add,
    update,
    findSteps
}