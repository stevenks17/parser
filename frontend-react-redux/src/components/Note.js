import React, { Component } from 'react'


import Card from 'react-bootstrap/Card'

class Note extends Component {
    render() {
        // conditional to render content using buttons if already saved
        if (this.props.graph) {

            return (
                <Card className="text-center">
                    <Card.body>
                    <Card.Header> Add Observation Notes</Card.Header>
                        <Card.Text>
                            {this.props.note.content}
                        </Card.Text>
                    </Card.body>


                </Card>
            )
        // renders only when content is not yet saved to db
        } else {
            return (
                <Card className="text-center">
                    <Card.Body>
                        <Card.Header> Add Observation Note </Card.Header>
                        <Card.Title>
                            {this.props.note.content}
                        </Card.Title>
                    </Card.Body>
                </Card>

            )
        }
    }
}


export default Note