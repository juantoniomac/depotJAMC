import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

const Hello = PROPS => (
    <div>Hello {props.name}!</div>
)

Hello.defaultPrps = {
    name: 'Juan'
}

Hello.propTypes = {
    name:PropTypes.string()
}

document.addEventListener('DOMContentLoaded', () => {
    ReactDOM.render(
        <Hello name="React" />,
        document.body.appendChild(document.createElement('div')),
    )
})