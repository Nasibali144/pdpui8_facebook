import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  static final String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text('facebook', style: TextStyle(fontSize: 30, color: Colors.blueAccent, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(icon: Icon(Icons.search, color: Colors.grey[400],), onPressed: () {}),
          IconButton(icon: Icon(Icons.camera_alt, color: Colors.grey[400],), onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          // #create post
          Container(
            color: Colors.black,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/user_5.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      height: 46,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[500]),
                        borderRadius: BorderRadius.circular(23),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "What's on your mind?",
                          hintStyle: TextStyle(color: Colors.grey[400]),
                        ),
                      ),
                    ))
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.video_call, color: Colors.red,),
                          SizedBox(width: 5,),
                          Text('Live', style: TextStyle(color: Colors.grey[500]),)
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      padding: EdgeInsets.symmetric(vertical: 14),
                      color: Colors.grey[300],
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.photo, color: Colors.green,),
                          SizedBox(width: 5,),
                          Text('Photo', style: TextStyle(color: Colors.grey[500]),)
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      padding: EdgeInsets.symmetric(vertical: 14),
                      color: Colors.grey[300],
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on, color: Colors.red,),
                          SizedBox(width: 5,),
                          Text('Check in', style: TextStyle(color: Colors.grey[500]),)
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          // #post story
          Container(
            height: 200,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(vertical: 10),
            color: Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10,),
                makeStory(userName: 'User Five', userImage: 'assets/images/user_5.jpeg', storyImage: 'assets/images/story_5.jpeg'),
                makeStory(userName: 'User Four', userImage: 'assets/images/user_4.jpeg', storyImage: 'assets/images/story_4.jpeg'),
                makeStory(userName: 'User Three', userImage: 'assets/images/user_3.jpeg', storyImage: 'assets/images/story_3.jpeg'),
                makeStory(userName: 'User Two', userImage: 'assets/images/user_2.jpeg', storyImage: 'assets/images/story_2.jpeg'),
                makeStory(userName: 'User One', userImage: 'assets/images/user_1.jpeg', storyImage: 'assets/images/story_1.jpeg'),
              ],
            ),
          ),

          // #feed
          makeFeed(
            userName: 'User Two',
            userImage: 'assets/images/user_2.jpeg',
            feedImage1: 'assets/images/story_2.jpeg',
            feedImage2: 'assets/images/story_4.jpeg',
            feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined',
            feedTime: '1 hr ago',
          ),

          makeFeed(
            userName: 'User Three',
            userImage: 'assets/images/user_3.jpeg',
            feedImage1: 'assets/images/story_3.jpeg',
            feedImage2: 'assets/images/story_5.jpeg',
            feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined',
            feedTime: '1 hr ago',
          ),

          makeFeed(
            userName: 'User Four',
            userImage: 'assets/images/user_4.jpeg',
            feedImage1: 'assets/images/story_4.jpeg',
            feedImage2: 'assets/images/story_2.jpeg',
            feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined',
            feedTime: '1 hr ago',
          ),

          makeFeed(
            userName: 'User Five',
            userImage: 'assets/images/user_5.jpeg',
            feedImage1: 'assets/images/story_5.jpeg',
            feedImage2: 'assets/images/story_1.jpeg',
            feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined',
            feedTime: '1 hr ago',
          ),

          makeFeed(
            userName: 'User One',
            userImage: 'assets/images/user_1.jpeg',
            feedImage1: 'assets/images/story_1.jpeg',
            feedImage2: 'assets/images/story_3.jpeg',
            feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined',
            feedTime: '1 hr ago',
          ),
        ],
      ),
    );
  }

  Widget makeStory({userName, userImage, storyImage}) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.1),
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blueAccent, width: 2),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover,
                  )
                ),
              ),
              Text(userName, style: TextStyle(color: Colors.white,),)
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage1, feedImage2}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.black,
      child: Column(
        children: [
          // #header
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover,
                  )
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(userName, style: TextStyle(color: Colors.grey[400], fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1),),
                    SizedBox(height: 3,),
                    Text(feedTime, style: TextStyle(color: Colors.grey, fontSize: 15),)
                  ],
                ),
              ),
              IconButton(icon: Icon(Icons.more_horiz, color: Colors.grey[500], size: 30,), onPressed: null)
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
            child: Text(feedText, style: TextStyle(color: Colors.grey[500], fontSize: 15, letterSpacing: 0.7, height: 1.5),),
          ),

          // #photo
          Row(
            children: [
              Expanded(
                child: Image(
                  height: 240,
                  fit: BoxFit.cover,
                  image: AssetImage(feedImage1),
                ),
              ),
              Expanded(
                child: Image(
                  height: 240,
                  fit: BoxFit.cover,
                  image: AssetImage(feedImage2),
                ),
              ),
            ],
          ),

          // #like
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Row(
              children: [
                makeLike(),
                Transform.translate(
                  offset: Offset(-5, 0),
                  child: makeLove(),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: Text('2.5K', style: TextStyle(color: Colors.grey[600], fontSize: 15),),
                ),
                Text('400 Comments', style: TextStyle(color: Colors.grey[600], fontSize: 13),),
              ],
            ),
          ),

          // #comment, like, share
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                makeLikeButton(isActive: true),
                makeCommentButton(),
                makeShareButton(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget makeLikeButton({bool isActive}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.thumb_up, color: isActive ? Colors.blue : Colors.grey, size: 18,),
          SizedBox(width: 5,),
          Text('Like', style: TextStyle(color: isActive ? Colors.blue: Colors.grey),)
        ],
      ),
    );
  }

  Widget makeCommentButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.comment, color: Colors.grey, size: 18,),
          SizedBox(width: 5,),
          Text('Comment', style: TextStyle(color: Colors.grey),)
        ],
      ),
    );
  }

  Widget makeShareButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.share, color: Colors.grey, size: 18,),
          SizedBox(width: 5,),
          Text('Share', style: TextStyle(color: Colors.grey),)
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(color: Colors.white),
        shape: BoxShape.circle
      ),
      child: Center(
        child: Icon(
          Icons.thumb_up,
          color: Colors.white,
          size: 13,
        ),
      ),
    );
  }
  Widget makeLove() {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Colors.red,
          border: Border.all(color: Colors.white),
          shape: BoxShape.circle
      ),
      child: Center(
        child: Icon(
          Icons.favorite,
          color: Colors.white,
          size: 13,
        ),
      ),
    );
  }
}
