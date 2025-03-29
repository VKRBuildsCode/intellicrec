import 'package:flutter/material.dart';

class Relatedtopicspage extends StatefulWidget {
  const Relatedtopicspage({super.key});
  @override
  State<Relatedtopicspage> createState() => _RelatedtopicspageState();
}

class _RelatedtopicspageState extends State<Relatedtopicspage> {
  List<String> chipLabels= [
    "Array",
    "Linked List",
    "Hash Table",
    "String",
    "Math",
    "Two Pointers",
    "Backtracking",
    "Dynamic Programming",
    "Tree",
    "Stack",
    "Breadth-first Search",
    "Depth-first Search",
    "Greedy",
    "Bit Manipulation",
    "Design",
    "Sort",
    "Binary Search",
    "Divide and Conquer",
    "Heap",
    "Graph",
  ];
  int? selectedChipIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: List.generate(chipLabels.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: ChoiceChip(
                      label: Text(chipLabels[index],
                      style: TextStyle(
                        color: Colors.white
                      ),
                      ),
                      selected: selectedChipIndex == index,
                      selectedColor: Colors.blue,
                      backgroundColor: Colors.black,
                      onSelected: (bool selected) {
                        setState(() {
                          selectedChipIndex = selected ? index : null; // Select only one
                        });
                      },
                    ),
                  );
                }),
              ))
        ],
      ),
    );
  }
}
