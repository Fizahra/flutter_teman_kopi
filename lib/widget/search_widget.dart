import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  final String text, hintText;
  final ValueChanged<String> onChanged;

  const SearchWidget(
      {super.key,
      required this.hintText,
      required this.onChanged,
      required this.text});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final styleAktif = TextStyle(color: Color.fromARGB(255, 153, 109, 93));
    final styleClue = TextStyle(color: Colors.grey);
    final style = widget.text.isEmpty ? styleClue : styleAktif;

    return Container(
      height: 42,
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          border: Border.all(color: Color.fromARGB(255, 153, 109, 93))),
      child: TextField(
        controller: searchController,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 5),
          prefixIcon: Padding(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Icon(
              Icons.search,
              size: 30,
              color: style.color,
            ),
          ),
          border: InputBorder.none,
          suffixIcon: widget.text.isNotEmpty
              ? GestureDetector(
                  child: Icon(
                    Icons.close,
                    color: style.color,
                  ),
                  onTap: () {
                    searchController.clear();
                    widget.onChanged('');
                    FocusScope.of(context).requestFocus(FocusNode());
                  })
              : null,
          hintText: widget.hintText,
          hintStyle: style,
        ),
        style: style,
        onChanged: widget.onChanged,
      ),
    );
  }
}
