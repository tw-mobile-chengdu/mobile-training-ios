## Create Mock Server

Most the mobile app will use the HTTP/HTTPS protocol to communicate with the server, we will setup a mock server to help us do the app develop:

* setup mock server because sometime the server delivery with app at the same time, we can change our app point to local mock server, then you can start the develop/debug.
* we will setup the functional test for the app, we also need this mock server, it more stable then the real server.

There are a lot of mock server library, e.g. [mountbank](http://www.mbtest.org/), [nock](https://github.com/nock/nock). in this workshop we choose [json-server](https://github.com/typicode/json-server).

* Create a new group `mock`. and the create a new `Empty` file named package.json in your project.

<img src="./images/04-mock-npm.png" width=700 />

* In terminal, cd to `mock` folder, run command `npm init`, every question you can keep default value.
* In terminal, run command `npm install json-server` to install node module.
* In `mock` folder, create new file `db.json`, and add some content.

```json
{
  "home_timeline": [
    {
      "created_at": "Tue May 31 17:46:55 +0800 2011",
      "id": 11488058246,
      "text": "求关注。",
      "reposts_count": 8,
      "comments_count": 9,
      "user": {
        "id": 1404376560,
        "screen_name": "zaku",
        "name": "zaku"
      }
    }
  ],
  "comments": [
    {
      "created_at": "Wed Jun 01 00:50:25 +0800 2011",
      "id": 12438492184,
      "text": "love your work.......",
      "user": {
        "id": 1404376560,
        "screen_name": "zaku",
        "name": "zaku"
      }
    }
  ]
}
```

* open the package.json file, in `scrips` section add `start: "json-server --watch db.json"`.
* In terminal, run command `npm start` to start the mock server.
* Then you can see the mock server info in terminal:

<img src="./images/04-mock.png" width=700 />

* Add `node_modules` into `.gitignore`, then add a new git commit.

<img src="./images/04-gitignore.png" width=700 />

>Tips:
>* Use google search to setup the Node environment in you local machine.
>* Use google search to get some HTTP/HTTPS document to read.