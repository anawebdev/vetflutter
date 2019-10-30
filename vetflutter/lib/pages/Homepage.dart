import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vetflutter/styles/colors.dart';
import 'package:vetflutter/styles/fonts.dart';
import '../Data.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('vetevo'),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: false,
              expandedHeight: 80.0,
              centerTitle: true,
              floating: true,
              snap: false,
              backgroundColor: Colors.white,
              titleSpacing: 0,
              title: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: false,
                children: <Widget>[
                  EmptyButton(),
                  AvatarChip(),
                  AvatarChip(),
                  AvatarChip(),
                  AvatarChip(),
                  AvatarChip(),
                  AvatarChip(),
                ],
              ),
            ),
            SliverToBoxAdapter(
                child: Container(
                    child: Column(children: <Widget>[
              Container(
                  margin: EdgeInsets.all(20),
                  child: Text('Hi Daniel, here is what is happening Today',
                      style: DashboardTitle, textAlign: TextAlign.start)),
              WormtestResultCard(),
              WormtestResultCard(),
              WormtestResultCard(),
              Container(
                margin: EdgeInsets.all(20),
                alignment: Alignment.topLeft,
                child: Text('Recent Articles',
                    style: DashboardSubtitle, textAlign: TextAlign.start),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ArticleCard(isArticleFullWidth: false),
                          ArticleCard(isArticleFullWidth: false)
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          ArticleCard(isArticleFullWidth: false),
                          ArticleCard(isArticleFullWidth: false)
                        ],
                      )
                    ],
                  )),
              Container(
                margin: EdgeInsets.all(20),
                alignment: Alignment.topLeft,
                child: Text('Article of the week',
                    style: DashboardSubtitle, textAlign: TextAlign.start),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ArticleCard(isArticleFullWidth: true)
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          ArticleCard(isArticleFullWidth: true)
                        ],
                      )
                    ],
                  )),
              Container(
                margin: EdgeInsets.all(20),
                alignment: Alignment.topLeft,
                child: Text('Any doubts about symptoms?',
                    style: DashboardSubtitle, textAlign: TextAlign.start),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ArticleCard(isArticleFullWidth: false),
                          ArticleCard(isArticleFullWidth: false)
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          ArticleCard(isArticleFullWidth: false),
                          ArticleCard(isArticleFullWidth: false)
                        ],
                      )
                    ],
                  )),
                  Container(
                margin: EdgeInsets.all(20),
                alignment: Alignment.topLeft,
                child: Text('All about castration',
                    style: DashboardSubtitle, textAlign: TextAlign.start),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ArticleCard(isArticleFullWidth: true)
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          ArticleCard(isArticleFullWidth: true)
                        ],
                      )
                    ],
                  )),
                  Container(
                margin: EdgeInsets.all(20),
                alignment: Alignment.topLeft,
                child: Text('How to track my pet’s health',
                    style: DashboardSubtitle, textAlign: TextAlign.start),
              ),
                  Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ArticleCard(isArticleFullWidth: false),
                          ArticleCard(isArticleFullWidth: false)
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          ArticleCard(isArticleFullWidth: false),
                          ArticleCard(isArticleFullWidth: false)
                        ],
                      )
                    ],
                  )),
            ])))
          ],
        ));
  }
}

class AvatarChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 20),
        height: 60,
        width: 60,
        child: CircleAvatar(
          backgroundColor: Colors.grey.shade800,
          backgroundImage: NetworkImage(
              'https://img2.10bestmedia.com/Images/Photos/352450/GettyImages-913753556_54_990x660.jpg'),
          radius: 30,
        ));
  }
}

class EmptyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      height: 30,
      child: RaisedButton(
        onPressed: (() {}),
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(color: PrimaryColor)),
        child: Text('New', style: EmptyButtonText),
      ),
    );
  }
}

class WormtestResultCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Card(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 15),
            child: Column(children: <Widget>[
              ListTile(
                leading: AvatarChip(),
                title: Text('Wurmtest', style: ArticleTitle),
                subtitle: Text('Rocco', style: ArticleText),
                trailing: Text('20.07.19', style: ArticleTitle),
              ),
              PhysicalModel(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(80.0),
                clipBehavior: Clip.antiAlias,
                child: LinearProgressIndicator(
                  value: 0.5,
                  backgroundColor: OffWhite,
                  valueColor: AlwaysStoppedAnimation(PrimaryColor),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Active test', style: ArticleSubtitle),
                        Text('In lab', style: ArticleSubtitle),
                        Text('Results', style: ArticleSubtitle)
                      ])),
            ]),
          )
        ])));
  }
}

class ArticleCard extends StatelessWidget {
  ArticleCard({@required this.isArticleFullWidth});

  bool isArticleFullWidth;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: 1,
      child: Container(
          margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                            'https://images.unsplash.com/photo-1424581342241-2b1aba4d3462?ixlib=rb-1.2.1&w=1000&q=80',
                            width: isArticleFullWidth
                                ? MediaQuery.of(context).size.width
                                : MediaQuery.of(context).size.width / 2,
                            height: MediaQuery.of(context).size.width / 2 - 20,
                            fit: BoxFit.cover),
                      ),
                      Container(
                          alignment: Alignment.bottomRight,
                          height: MediaQuery.of(context).size.width / 2 - 20,
                          padding: EdgeInsets.all(10),
                          child: Text('15 min',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)))
                    ],
                  )),
              isArticleFullWidth
                  ? Container()
                  : Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(top: 5),
                      child: Text('Feb 2019',
                          style: ArticleSubtitle, textAlign: TextAlign.left)),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    '8 Dinge, die Du zum Schutz vor Zecken blabla bla nlblsdfkjds ghdfkj gd jyjgh j',
                    style: ArticleTitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )),
              isArticleFullWidth
                  ? Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                          style: ArticleText,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left))
                  : Container(),
            ],
          )),
    );
  }
}
