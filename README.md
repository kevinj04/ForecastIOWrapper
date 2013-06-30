FIOWrapper
==========

A simple interface for accessing ForecastIO weather data.

[Forecast.io](http://forecast.io) is an awesome weather web-app brought to you by the same people that made [Dark Sky](http://darkskyapp.com). They provide an [API](https://developer.forecast.io/docs/v2) for developers that is free for up to 1000 calls per day. After which the price **skyrockets** to $1 per 10,000. Dark Sky is my go to app for deciding exactly how far I'm willing to walk for lunch on :umbrella: days.

I was building my own little for-fun weather app using this API and decided to bundle up the models and request interface I was using into a little framework and open-source it. It's notification based because that's how I roll. If you're looking for a delegate based solution of perhaps something with more helper functions here are some other options:

[Forecastr](https://github.com/iwasrobbed/Forecastr) | [libFIOApi](https://github.com/carlj/libFIOApi)

If you happen to use any of this code to make a million dollars on some phenomenal app, I'd appreciate a high-five the next time you see me. :beer: Which will probably be never. 

More seriously, send me a message on here so I can go grab your app! 

Using this thing:
----------------
For starters, if you want to run/add to the unit tests, you're going to need to install the [Cedar unit testing framework](https://github.com/pivotal/cedar) from the cool folks over at [Pivotal Labs](http://pivotallabs.com/). It's a BDD-style framework for iOS that hooks relatively nicely into Xcode and I've been using it for a while now. This will probably be replaced by the enhanced unit testing in Xcode 5, but for now, here it is.
