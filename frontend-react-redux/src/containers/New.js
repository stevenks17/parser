import React, { Component } from 'react'


import Graph from '../components/Graph'
import GraphInput from '../components/Graphinput'

import { NavLink } from 'react-router-dom'

import { connect } from 'react-redux'

class New extends Component {

    render() {

        const graph = this.props.graph.find(graph => {return graph.id === parseInt(this.props.match.params.id)})

        if (graph) {
            return (
                <div>
                    <Row>
                        <Col>
                            <Card>
                                <GraphInput graph_id={graph.id}/>
                            </Card>
                        </Col>

                        <Col>
                            <Card>
                                <Graph graph={graph}/>
                            </Card>
                        </Col>

                    </Row>
                </div>
            )
        
        } else {
            return (
                <div>
                    <NavLink
                    style={{ marginRight: '10px'}}
                    to="/">
                        <Button variant="dark" size="lg" block>Add data to the Dashboard to get started</Button>
                    </NavLink>

                </div>
            )
        }
    }
}

const mapStateToProps = state => {
    return {
        graph: state.graphs
    }
}

export default connect (mapStateToProps)(New)