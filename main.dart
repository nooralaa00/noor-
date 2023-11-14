import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constant.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var formKey =GlobalKey<FormState>();

     var emailController =TextEditingController();

     var PassController =TextEditingController();

     @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(
              title:  Center(
                child: Text(
                            "cignifi",
                            style: GoogleFonts.sofiaSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Color(0xff2534BB),
                
                            ),),
              ), 
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      
                        Text(
                          "Creatto your Account",
                          style: GoogleFonts.poppins(
                             fontSize: 20,
                              fontWeight: FontWeight.w400

                          ),),
                        SizedBox(
                          height: 30,
                        ),

                        defaultTextFormField(
                          ontad: (){},
                          Type: TextInputType.emailAddress,
                          control: emailController,
                          label:  "Email Apress",
                          
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Pleas enter email';
                            }
                            return null ;
                          },

                          onChanged: (value){},
                          obscureText: false,

                        ),

                        SizedBox(
                          height: 30,
                        ),


                        defaultTextFormField(
                          ontad: () {
                            
                          },
                          Type: TextInputType.visiblePassword,
                          control: PassController,
                          label: "password",
                         
                          validator: (value) {
                            if ( value!.isEmpty ||value==null) {
                              return 'Pleas enter password ';
                            }
                            return null ;

                          },
                          onChanged: (value){

                          },
                        

                        ),
                        SizedBox(
                          height: 30,
                        ),
                         defaultTextFormField(
                          ontad: () {
                          
                          },
                          Type: TextInputType.visiblePassword,
                          control: PassController,
                          label: "Confirm Password",
                         
                          validator: (value) {
                            if ( value!.isEmpty ||value==null) {
                              return 'Pleas enter password ';
                            }
                            return null ;

                          },
                          onChanged: (value){

                          },
                          

                        ),
                        SizedBox(
                          height: 50,
                        ),
                        InkWell(
                          onTap:(){
                            if(formKey.currentState!.validate()){
                             
                            }
                          },
                        
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              child: Center(
                        
                                child: Text(
                                  "Sign in",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18,
                                    color: Colors.white,
                        
                        
                                  ),
                                ),
                              ),
                              decoration:  BoxDecoration(
                                color: Color(0xff2534BB),
                                borderRadius: BorderRadius.circular(12),
                        
                              ),
                            ),
                          ),
                        ),
                         SizedBox(
                          height: 50,

                        ),

                        Center(
                          child: Text(
                            "Or sign in with",
                            style: GoogleFonts.inter(
                              color: Colors.grey,
                              
                            ),
                          ),
                        ),


                        SizedBox(
                          height: 50,

                        ),
                   

                      ],
                    ),
                  ),
                ),
              ),
            ),

          );
  }
}