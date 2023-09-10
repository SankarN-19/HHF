import 'package:firebase_auth/firebase_auth.dart';
import 'package:legalease/consts/consts.dart';

import '../../utils/utils.dart';
import '../../widgets/round_button.dart';
import 'login.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final repasswordController = TextEditingController();
  final nameController = TextEditingController();
  final phonenoController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    repasswordController.dispose();
    nameController.dispose();
    phonenoController.dispose();
  }

  void signUp() {
    setState(() {
      loading = true;
    });
    _auth
        .createUserWithEmailAndPassword(
            email: emailController.text.toString(),
            password: passwordController.text.toString())
        .then((value) {
      setState(() {
        loading = false;
      });
    }).onError((error, stackTrace) {
      Utils().toastMessage(error.toString());
      setState(() {
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: nameController,
                    decoration: const InputDecoration(
                      hintText: 'Name',
                      prefixIcon: Icon(Icons.person),
                    ),
                    //validate matlab agar jo input empty ho niche as an alert dikhayega to fill the email
                    validator: (value) {
                      if ((value)!.isEmpty) {
                        return "Enter your Full Name";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: phonenoController,
                    decoration: const InputDecoration(
                      hintText: 'Contact',
                      prefixIcon: Icon(Icons.perm_contact_cal_sharp),
                    ),
                    validator: (value) {
                      if ((value)!.isEmpty) {
                        return "Enter Contact Number";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType
                        .emailAddress, //it just tells the type is email address
                    controller: emailController,
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email_sharp),
                    ),
                    //validate matlab agar jo input empty ho niche as an alert dikhayega to fill the email
                    validator: (value) {
                      if ((value)!.isEmpty) {
                        return "Enter your Email";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock_open_sharp),
                    ),
                    validator: (value) {
                      if ((value)!.isEmpty) {
                        return "Enter password";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: repasswordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Re-enter Password',
                      prefixIcon: Icon(Icons.lock_open_sharp),
                    ),
                    validator: (value) {
                      if ((value)!.isEmpty) {
                        return "Re-enter password";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            const SizedBox(height: 20),
            RoundButton(
              title: 'Register',
              loading: loading,
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  signUp();
                }
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: const Text('Login'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
