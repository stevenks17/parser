import React, { Component } from 'react'

import Note from '../components/Note'
//future action
import { deleteNote } from '../actions/deleteSpeculations'
// connect to redux store
import { connect } from 'react-redux'


class Notes extends Component {
// Notes component recieves 2 props graph and notes (array)
    render() {

        return (
            <div>
              { this.props.notes.map(note => <Note note={note} graph={this.props.graph} deleteNote={this.props.deleteNote} /> )}
            </div>
        )
    }
}

export default connect(null, {deleteNote})(Notes)