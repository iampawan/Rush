import 'package:example/models.dart';
import 'package:flutter/material.dart';
import 'package:rush/rush.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tank = RushEngine.getTank<UserTank>();
    Rush.log(tank.counterTank.value);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rush'),
        actions: const [RushDarkModeButton()],
      ),
      floatingActionButton: const Row()
          .rush
          .end
          .add(
            FloatingActionButton(
              onPressed: () async {
                DecrementFlow(1);
              },
              child: const Icon(Icons.add),
            ),
          )
          .addEmpty(width: 10)
          .add(
            FloatingActionButton(
              onPressed: () async {
                FetchUsersFlow();
              },
              child: const Icon(Icons.person),
            ),
          )
          .apply(),
      body: const Column()
          .rush
          .add(RushSync(
              builder: (context, tank, status) {
                return Text('Value: $tank');
              },
              actions: const {IncrementFlow, DecrementFlow}))
          .add(
            RushSyncNotifier(
              actions: {
                IncrementFlow: (context, action, status) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('IncrementFlow status: $status')),
                  );
                },
              },
              child: RushSync<UserTank>(
                builder: (context, tank, status) {
                  return Text('Value: ${tank.counterTank.value}');
                },
                actions: const {IncrementFlow, DecrementFlow},
              ),
            ),
          )
          .add(RushSync<UserTank>(
            errorBuilder: (context, error) =>
                Center(child: Text('Error: $error')),
            actionNotifier: {
              FetchUsersFlow: (context, action, status) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('FetchUsersFlow status: $status')),
                );
              },
              DecrementFlow: (context, action, status) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('DecrementFlow status: $status')),
                );
              },
            },
            builder: (context, tank, status) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: tank.users?.length ?? 0,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(tank.users![index].name),
                  );
                },
              );
            },
            actions: const {FetchUsersFlow},
          ))
          .add(const Text("Child 1").rush.xl6.red700.apply())
          .add(RichText(
            text: const TextSpan(
                text: "Test: ", children: [TextSpan(text: "YO")]),
          ).rush.black.bold.apply())
          .add(const RushHeightBox(20))
          .add(Container()
              .rush
              .height(100)
              .widthInPercentage(context, 80)
              .rounded
              .gradientFromAndTo(from: Rush.indigo300, to: Rush.purple600)
              .padding(Rush.e16)
              .apply())
          .addEmpty(height: 20)
          .add(RushFlip(
              front: Container()
                  .rush
                  .height(100)
                  .widthInPercentage(context, 80)
                  .rounded
                  .neuBrutalism()
                  .padding(Rush.e16)
                  .apply(),
              back: Container()
                  .rush
                  .height(100)
                  .widthInPercentage(context, 80)
                  .rounded
                  .neuBrutalism(color: Colors.red)
                  .padding(Rush.e16)
                  .apply()))
          .applyWithPadding(),
    );
  }
}
