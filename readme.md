# yql-ios

**yql-ios** is an [Objective-C](http://en.wikipedia.org/wiki/Objective-C) library that provides [YQL](http://developer.yahoo.com/yql/) connectivity for your [iOS](http://developer.apple.com/ios) applications.

[YQL](http://developer.yahoo.com/yql/) (Yahoo! Query Language) is an expressive SQL-like language that lets you query, filter, and join data across Web services. With YQL, apps run faster with fewer lines of code and a smaller network footprint.

## Usage

Import **YQL.h** and **YQL.m** into your project. Use the *query* method to invoke YQL, passing the desired query as a parameter:

`NSDictionary *results = [yql query:QueryTextView.text];`

You will get a `NSDictionary` object containing the results. The structure of this dictionary is the same you would get from a query in the [YQL console](http://developer.yahoo.com/yql/console/). You can use `valueForKeyPath` to access the desired data in the results structure:

`NSLog(@"%@", [[results valueForKeyPath:@"query.results"] description]);`

## See it in action

This repository is an Xcode project that mimics the [YQL console](http://developer.yahoo.com/yql/console/). You can run it on Xcode to see how it works.