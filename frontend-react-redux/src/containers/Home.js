import React, { Component } from 'react'
import Graph from '../components/Graph'
import InteractButton from '../components/InteractButton'
import DropdownInput from '../components/DropdownInput'

class Home extends Component {

    render() {
        return (
            <div>
                <Row>
                    <Col>
                    <DropdownInput />
                    </Col>
                </Row>


                <Row>
                    {this.props.graphs.map((graph) => {

                        return (
                            <Col xs={3} >
                                <Card className="text-center" key={graph.id}>
                                    <Graph graph={graph}/>
                                    <InteractButton graph={graph} />
                                </Card>
                            </Col>
                        )
                    })}
                </Row>
            </div>
        )
    }


}


const mapStateToProps = state => {
    return {
        graphs: state.graphs
    }
}

export default connect (mapStateToProps)(Home)