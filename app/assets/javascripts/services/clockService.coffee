$(document).on 'ready page:load', ->
  updateClock()
  setInterval((-> updateClock()), 1000)

updateClock = ->
  dateNow = moment()
  dateBirth = moment.tz('2021-09-07 07:49:00', 'Europe/London')
  duration = moment.duration(dateNow.diff(dateBirth))

  years = Math.floor(duration.asYears())
  duration = duration.add(-years, 'years')

  months = Math.floor(duration.asMonths())
  duration = duration.add(-months, 'months')

  days = Math.floor(duration.asDays())
  duration = duration.add(-days, 'days')

  hours = Math.floor(duration.asHours())
  duration = duration.add(-hours, 'hours')

  minutes = Math.floor(duration.asMinutes())
  duration = duration.add(-minutes, 'minutes')

  seconds = Math.floor(duration.asSeconds())

  element = $('#clock')
  element.find('.years .value').text(asTime(years))
  element.find('.months .value').text(asTime(months))
  element.find('.days .value').text(asTime(days))
  element.find('.hours .value').text(asTime(hours))
  element.find('.minutes .value').text(asTime(minutes))
  element.find('.seconds .value').text(asTime(seconds))

asTime = (value) ->
  return "00" if value <= 0
  value = Math.round(value).toString()
  if value.length > 1 then value else "0#{value}"
