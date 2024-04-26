import 'package:auth_sql/store/auth/auth.store.dart';
import 'package:flutter/material.dart';
import 'package:auth_sql/screens/home/account_page.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _searchController = TextEditingController();
  static const Color colorPrimary = Color(0xFF3D731C);
  static const Color colorSecond = Color(0xFF73D935);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: CustomScrollView(
        slivers: [
          UserWidget(),
          SliverPadding(
            padding: EdgeInsets.only(bottom: 20.0),
          ),
          SearchWidget(
              hintText: 'Pesquisar',
              labelText: 'Encontre profissionais e empresas',
              shouldValidate: false,
              text: _searchController.text,
              textController: _searchController,
              suffixIcon: Icon(Icons.search),
              validator: (text) {
                return null;
              }),
          SliverPadding(
            padding: EdgeInsets.only(bottom: 10.0),
          ),
          BoxWidget(),
          BoxWidget(),
          BoxWidget(),
          BoxWidget(),
          BoxWidget(),
          BoxWidget(),
        ],
      ),
    );
  }

  SliverToBoxAdapter UserWidget() {
    final store = Provider.of<AuthStore>(context);
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(
          color: colorPrimary,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 3,
              blurRadius: 6,
              offset: Offset(0, 1),
            ),
          ],
        ),
        padding: EdgeInsets.all(10),
        height: 150,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  child: SvgPicture.asset('assets/svg/SIM_CLUB_LOGO.svg', width: 35, height: 35,),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const AccountPage()));
                    },
                    icon: Icon(Icons.account_circle_outlined),
                    color: Colors.white,
                    iconSize: 38,
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Olá, ${store.getName()}!',
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
                Spacer(),
              ],
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter BoxWidget() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Container(
            color: Colors.grey[400],
            height: 150,
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter SearchWidget({
    required TextEditingController textController,
    required String text,
    required final String hintText,
    required final String? labelText,
    required final bool shouldValidate,
    required final String? Function(String?)? validator,
    final Widget? suffixIcon,
  }) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: TextFormField(
          initialValue: textController.text,
          validator: shouldValidate ? validator : null,
          decoration: InputDecoration(
            prefixIcon: suffixIcon, // Alterado para prefixIcon
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.normal,
            ),
            labelText: labelText,
            labelStyle: const TextStyle(color: Colors.black),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black54),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
