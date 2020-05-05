import * as React from 'react'
import { Helmet } from 'react-helmet-async'

const Wrapper = ({ children, doc }) => <React.Fragment>
    <Helmet>
        <meta charset="utf-8" />
        <link rel="icon" href="https://myfursona.com/favicon.svg" sizes="any" type="image/svg+xml" />
    </Helmet>
    {children}
</React.Fragment>
export default Wrapper
