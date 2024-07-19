import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/models/content_model.dart';

class DetailScreen extends StatefulWidget {
  final Content content;

  const DetailScreen({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(widget.content.imageUrl),
                  fit: BoxFit.cover,
                  colorFilter:
                      const ColorFilter.mode(Colors.black87, BlendMode.darken),
                )),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: SizedBox(
                        height: 250.0,
                        width: 150.0,
                        child: Image.asset(widget.content.imageUrl),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "97% Match",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "2013",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(2)),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "13+",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )),
                        const Text(
                          "season",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        height: 35.0,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: TextButton.icon(
                            onPressed: null,
                            icon: const Icon(Icons.play_arrow,
                                color: Colors.black),
                            label: const Text('Play',
                                style: TextStyle(color: Colors.black))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        height: 35.0,
                        width: 400,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(165, 135, 134, 134),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: TextButton.icon(
                          onPressed: null,
                          icon: const Icon(Icons.download, color: Colors.white),
                          label: const Text(
                            'Download S1:E1',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: 60.0,
                          child: Text(
                            "After a demon attack leaves his family slain and his sister cursed, Tanjiro embarks upon a perilous journey to find a cure and avenge those he's lost.",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 50.0,
                          width: 400,
                          child: Text(
                            "Cast: Natsuki Hanae, Akari Kito, Hiro Shimono ... more",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(children: [
                          Icon(Icons.check, color: Colors.white),
                          Text(
                            'My List',
                            style: TextStyle(color: Colors.white),
                          )
                        ]),
                        Column(children: [
                          Icon(Icons.thumb_up, color: Colors.white),
                          Text(
                            'Rate',
                            style: TextStyle(color: Colors.white),
                          )
                        ]),
                        Column(children: [
                          Icon(Icons.share, color: Colors.white),
                          Text(
                            'Recommend',
                            style: TextStyle(color: Colors.white),
                          )
                        ]),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            expandedHeight: 600.0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back,color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Episodes',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ListTile(
                      leading: Image.asset(widget.content.imageUrl),
                      title: const Text('1. The beginning ',style: TextStyle(color: Colors.white,),),
                      subtitle: const Text('23m',style: TextStyle(color: Colors.white,),),
                      trailing: const Icon(Icons.file_download,color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ListTile(
                      leading: Image.asset(widget.content.imageUrl),
                      title: const Text('2. Warriors',style: TextStyle(color: Colors.white,),),
                      subtitle: const Text('23m',style: TextStyle(color: Colors.white,),),
                      trailing: const Icon(Icons.file_download,color: Colors.white),
                    ),
                  ),
                  // Add more ListTiles for other episodes as needed
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
