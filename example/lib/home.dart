import 'package:example/models.dart';
import 'package:flutter/material.dart';
import 'package:rush/rush.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tank = RushEngine.getTank<CounterTank>();
    print(tank.value);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rush'),
      ),
      floatingActionButton: const Row()
          .rush
          .end
          .add(
            FloatingActionButton(
              onPressed: () async {
                DecrementFlow(1);
                FetchUsersFlow();
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
          .add(
            RushNotifier(
              actions: {
                IncrementFlow: (context, action, status) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('IncrementFlow status: $status')),
                  );
                },
                DecrementFlow: (context, action, status) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('DecrementFlow status: $status')),
                  );
                },
              },
              child: RushBuilder<CounterTank>(
                builder: (context, tank, status) {
                  return Text('Value: ${tank.value}');
                },
                actions: const {IncrementFlow, DecrementFlow},
              ),
            ),
          )
          .add(RushBuilder<UserTank>(
            actionNotifier: {
              FetchUsersFlow: (context, action, status) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('FetchUsersFlow status: $status')),
                );
              },
            },
            builder: (context, store, status) {
              return switch (status) {
                RushStatus.loading => const CircularProgressIndicator(),
                RushStatus.success => ListView.builder(
                    shrinkWrap: true,
                    itemCount: store.users?.length ?? 0,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(store.users![index].name),
                      );
                    },
                  ),
                RushStatus.idle => const Text('Idle'),
                RushStatus.error => const Text('Error'),
              };
            },
            actions: const {FetchUsersFlow},
          ))
          .add(const Text("Child 1").rush.xl6.red700.apply())
          .add(const Text("Child 2").rush.xl6.red700.apply())
          .add(Container()
              .rush
              .height(100)
              .widthInPercentage(context, 80)
              .gradientFromAndTo(from: Rush.red500, to: Rush.green400)
              .padding(Rush.e16)
              .apply())
          .applyWithPadding(),
    );
  }
}
