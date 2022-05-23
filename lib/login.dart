import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (BuildContext context, _) {
        return Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFff7e5f), Color(0xFFdd2476)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: SafeArea(
              bottom: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Image.asset(
                            "assets/images/logo.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            text: "CONN",
                            style: TextStyle(
                              color: Color(0xFFdd2476),
                              fontSize: 40,
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                              TextSpan(
                                text: "EXION",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "Find and Meet people around\nyou to find LOVE",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(height: 8),
                          const Text(
                            "SIGN IN",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                          const TextField(
                            cursorColor: Colors.white,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
                              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
                              focusColor: Colors.white,
                              hintText: "Enter Email",
                              hintStyle: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          const TextField(
                            cursorColor: Colors.white,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            obscureText: true,
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
                              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
                              focusColor: Colors.white,
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Checkbox(
                                activeColor: const Color(0xFFff7e5f),
                                value: true,
                                onChanged: (_) {},
                              ),
                              const Text(
                                "Remember password",
                                style: TextStyle(color: Colors.white, fontSize: 14),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 56,
                          margin: const EdgeInsets.symmetric(horizontal: 48),
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(48),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "GET STARTED",
                              style: TextStyle(
                                color: Color(0xFFdd2476),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 56,
                              padding: const EdgeInsets.all(16),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset("assets/images/fb.png"),
                            ),
                            const SizedBox(width: 24),
                            Container(
                              width: 56,
                              padding: const EdgeInsets.all(16),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset("assets/images/twitter.png"),
                            ),
                          ],
                        ),
                        const Text(
                          "FORGOT PASSWORD?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 64,
                    alignment: Alignment.center,
                    color: Colors.black26,
                    child: RichText(
                      text: const TextSpan(
                        text: "DON'T HAVE ACACOUNT ? ",
                        style: TextStyle(
                          color: Color(0xFFff7e5f),
                          fontSize: 14,
                        ),
                        children: [
                          TextSpan(
                            text: "SIGN UP",
                            style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
