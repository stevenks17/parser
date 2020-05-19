import React, { Component } from 'react'

import Question from '../components/Question'
//future action
import { deleteQuestion } from '../actions/deleteSpeculations'
// connect to redux store
import { connect } from 'react-redux'


class Questions extends Component {
    render() {
        return (
            <div>
                {(note => <Question question={note} graph={this.props.graph} deleteQuestion={this.props.deleteQuestion}/>)}
            </div>
        )
    }
}

export default connect(null, {deleteQuestion})(Questions)