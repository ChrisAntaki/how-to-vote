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
  displayName: 'ID State Info'

  render: ->
    <section className='flex'>
      <div className='left'>
        <h2>
          Key Information
          <Share {...@props} />
        </h2>
        <PollPlace title='County Caucus' state={@props.state} />
        <p>
          Idaho has semi-open caucuses {entity('mdash')} Idaho's Democratic Party Caucuses are open to all Idahoans, regardless of political affiliation, except those who participate in Idaho's Republican party primary on March 8, 2016. To caucus, you must sign a form publicly declaring that you are a Democrat and the party can list you as such.
        </p>
        <p>
          Idaho has Same-Day Registration which allows you to register to vote at the caucuses on Tue, March 22.
        </p>
        <p>
          Caucus times vary based on time zone. If your caucus is in Mountain Time, it runs from 6PM-9PM with doors closing at 7PM. If your caucus is in Pacific Time, it runs from 5PM-8PM with doors closing at 6PM.
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
