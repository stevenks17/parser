import React, { Component } from 'react'
import Card from 'react-bootstrap/Card'


class Graph extends Component {
    render () {
        return (
            <Card.Body>
                <Card.Title as="p">{this.props.graph.name}</Card.Title>
                <Card.Img variant="top" src={this.props.graph.screenshot_url} />
            </Card.Body>
        )
    }
}


export default Graph