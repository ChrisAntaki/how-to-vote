import React     from 'react'
import College   from 'components/blocks/college'
import Deadline  from 'components/blocks/deadline'
import Military  from 'components/blocks/military'
import MoreInfo  from 'components/blocks/moreInfo'
import Right     from 'components/blocks/right'
import Offices   from 'components/widgets/officesWidget'
import PollPlace from 'components/widgets/pollPlaceWidget'
import Share     from 'components/widgets/shareWidget'
import entity    from 'utils/entity'

module.exports = React.createClass
  displayName: 'NM State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          New Mexico has closed primaries {entity('mdash')} New Mexicans must register as a Democrat to vote for Bernie!
        </p>
        <Deadline {...@props} />
        <h3 className='caps'>Early/Absentee Voting</h3>
        <p>
          If you can't make it to the polls on primary day, you can submit an absentee ballot by mail, or you can request and submit an absentee ballot in person at your county clerk's office beginning on May 10, 2016. Your county clerk will also designate locations for early voting between May 21 and June 4, 2016.  Contact your local county clerk's <a href='http://www.sos.state.nm.us/Voter_Information/County_Clerk_Information.aspx' target='_blank'>office</a> to learn more about early voting hours and locations near you.
        </p>
        <College {...@props} />
        <Military {...@props} />
        <MoreInfo {...@props} />
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Right {...@props} />
      </div>
    </section>
