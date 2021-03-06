import React     from 'react'
import College   from 'components/blocks/college'
import Military  from 'components/blocks/military'
import MoreInfo  from 'components/blocks/moreInfo'
import Right     from 'components/blocks/right'
import Young     from 'components/blocks/young'
import Offices   from 'components/widgets/officesWidget'
import PollPlace from 'components/widgets/pollPlaceWidget'
import Share     from 'components/widgets/shareWidget'
import entity    from 'utils/entity'

module.exports = React.createClass
  displayName: 'ME State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace state={@props.state} />
        <p>
          Maine has closed caucuses {entity('mdash')} Mainers must register as a Democrat to vote for Bernie!
        </p>
        <p>
          Maine has Same-Day Registration which allows you to register to vote at the caucuses on Sun, March 6 for unregistered and unaffiliated voters. Previously registered voters must update their affiliation to Democrat by Fri, Feb 19.
        </p>
        <h3 className='caps'>Absentee Caucusing</h3>
        <p>
          Can't attend the caucus in person? You can request an absentee ballot <a href='http://www.mainedems.org/page/request-absentee-ballot' target='_blank'>here</a> and return it anytime before Wed, March 2.
        </p>
        <Young {...@props} />
        <College {...@props} />
        <Military {...@props} />
        <MoreInfo {...@props} />
        <Offices {...@props} />
      </div>
      <div className='right'>
        <Right {...@props} />
      </div>
    </section>
