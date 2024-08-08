// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

bool isSecured = true;

Map<String, User> users = {
  "bassam@gmail.com": User(email: 'bassam@gmail.com', password: '1234'),
  "anas@gmail.com": User(email: 'anas@gmail.com', password: 'a123'),
};

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Login Page",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network(
              'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAsJCQcJCQcJCQkJCwkJCQkJCQsJCwsMCwsLDA0QDBEODQ4MEhkSJRodJR0ZHxwpKRYlNzU2GioyPi0pMBk7IRP/2wBDAQcICAsJCxULCxUsHRkdLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCz/wAARCACkAU0DASIAAhEBAxEB/8QAGwAAAgMBAQEAAAAAAAAAAAAAAgMAAQQHBQb/xABFEAACAQIEAwQEDAQEBQUAAAABAhEAAwQSITFBUWETInGBBTKRoQcUI0JGUoWSscHE0XKC4fAzQ2KiFSRTY7IGNMLS8f/EABoBAAMBAQEBAAAAAAAAAAAAAAECAwAEBQb/xAApEQACAgEEAQMDBQEAAAAAAAAAAQIREgMhMUEEUYGxEyIzBSNhYvAy/9oADAMBAAIRAxEAPwDnSsB6wJhgw14jTWqDasTxDDzNWoECROZwu50EdKgAlwRMK8eXhX1pMisAACCYbMNeIqgxBbiWDDzNWoECROZwvER4VFUS8iYVo8qwCpMEcypnwmpuqjXTN76IKMrGNQy69DNEVGVCBr3p6xFFJgbQJOaYBloza6acqoyQo5E++mlFhgBGXLrrrPOqKjKpjUyD5VqYMkBuVPIKPZUnvMeBnTxphUZhpoQpI8amUS2mi5jHOOFagZCphgQNgAJ5CoxkAAGNTrqdfCmFQSgiJCk+dCyiAQIktprwrUxkwCdQeQX3VVGygHQRoD7RNDQGRWlSRVRUoBLkVNKqjRC7Ko8+gogewdpJOY7DQfvTo/pR5QAABAAgVcVVROVzti4qRTIqRRoGQqKkcqbFVlrUbIVHOpFMy1UUA5C4qopkVIoDWKiqpkb1RFChkxZqopkUJoUFMAg6VVHFSKDHTF1KKKqgGytKkipFURWCXIqpFSqrBCkV1L4JPpT9lfqq5XXU/gk+lP2V+qrj8z8Mvb5MuTl6lxOWesbVBOsTsQY10POiTZRmAhw3LSKtd34Aq/8ASuwVspc+uWY4xMUSg69QQY5USRprEOGMzrR2xBcxoVaBznamoRyBVTEn1T7JFTKdN8usUw6Bh1Xz34VZHdUcs1MkTcgCGgTMcJ28qmUwOWsU4gQ0Ea5YGukVI7q+dNQmQnKdN+FSGmRMzwp5ElTyCj2VUCW65oPjWo2Qgg8ZnrvQkMYJ99aCO8nGMoJoWGgG5ljI60GgqRnYHrw9lCRT3AJH8K/hSytJRRSFEVRphFARSlUwa32LWRAWHfbVunIUnC2e0YuRKIRE8X3jyreFk1XTj2zm1tSvtQvLNWVAA507LAPt4azQxO9Wo5shUVIpsVCtajZCYqRTctVloUbIVFURTSKHLQoZSFxVEUwiqy0tD5C4oSKbFCRQoZSFkUJFNIFPtej8dehltZF+tfOSfBSM3urKLfAzmo8mGDVhZ1O34166ehzvcv8AlaT8Gc//ABq39F4cT8rfPmg92Wm+jJg+tE8UgaxQEV67ejLOuW7cH8QU/hFZn9H3lnK6P7Vb3yPfSvRmuikdSLMEVVNe29slXVlPIjfwpdSarksnYJqqKqilCSupfBJ9Kfsr9VXLa6l8En0p+yv1Vcnmfgl7fIUcxVARvGoA6mjCzm11UE7cqpTGkTDZh47Ua6SeJBHtruSJNhIkkTzAA3k0eSZE+qN43qkMRImDI8aYuknmCPbVEiMpFBNCeUDXrRZQApHGfdRKDB6ke6jAkDTaffTpEXIHJA5kET51eXQGd54bUzedImJ8qKNAOU++mSJ5ickEDnHDnUKakbATPlTo1HQAeypGpPOZrUDMQUggDjEedAyADed48q0ZWZlCrLEhVA1mToKjJanL2qgAnUI7A9Z5UKHUzIyQf740sitNxCrMpEEQPHSQR4iD50pgBvFI0WjIQRQrba46ou7GByHU+FMMa6jTrW3C2Mi52HfcaA8F4e2kUcnQ09RQjYaW1tqiL6qiB15k+NMAA8fxowjEAhWIOoIBIPso0s3HdEAy5mAzXZRF6s0aCumqPPcmxGWplrefR94BpxGCJUK0LfMnMYESseOun423o+6s/wDMYIkI79y+xkLwXubngPwoZIG55+Wplp3Zt9V/umqNthqQY4yCKegZCctSKblqstChlITlqopuWqI3oUMpCYqiNaYcvMTPPpNTITsD46fnQodMTFOw2DxGMYi1C21MPeacinkOZ6VpwWAuYu4c2ZMPbMXXESx37NDz5nh419Atu3aRLdtVREGVVUQAKaOne7I6vkYfbHk+ZxWGuej8RZe2zFO7csu0SSvrK0aT+Rr1GxuCW3auvdAFxQ4trLXIPAhePjFaMZh1xNl7RgOTmtsfmuNpPXY+NeFhLeBD3xjZU2xorFwpYGGUqmpO1NvB7dmi1qxuXKNF30tanLZsM55s0E/yoCffSTjse0xg4B/7d805vSOFtzbwmGYxwACf7LYLUDYz0gdRgwB/qW7PvIoOX9i8Y/1EH0hiF/xcNHP/ABE/8gaJcdhnic1s8c2q+Er+1W2OxCA9thiojWC6iP5gR76Av6OxHrKEc8wEM9GXu1lJ9SKpLtDmCXE1yujeDLXn38Hu1nzQ7/ymru27uDZWt3ZDzCncgfWXaOtPtX7d4RGW4N1n3rWeM/tlsy0bW6PJI4a9Zqq9HE4cXJdf8Qexv6155ETprXJqabg6Z0J2DXUvgk+lP2V+qrl1dS+CX6U/ZX6qvP8AN/DL2+Rkc0QbGASWCmdwIpiKJcbwrR5cqBAxkieRimKDwnQa+FegjmkxiKNNJlgD4RTFGrCBoGielAgbhPIxTVWduA1qqOeTCUd09CI560YUQugnvbVFXQnh+dMCnQ1RI55SLyb6bZY6zRFAApjWSDPGiCmBIMcKLKYHLWKpiQcxZUSNPq6CdZojh7oZgUEgsIzpMjgRNPtoQWYauil7Yj5w0zfy6nypRThGp9tbEXMWid8rEOyFVnSHOkeJ1HnSGAiYj1um3Oa2XFDZHditxlzMMpYmDAfQ7n+vGhdpMvcUneWw6kk8zpSuJSMzK4QC2roS4TWGyFVJzKpEHUcfGOFSziRhs5t4e0xfLm+MJbv6LMAdohjfX+lMU2FudpcCXxLFkvJdyMx4tkYHTfepduYS6rpbwmFtPcKhHtpiS6AGYGe4QZ1mRx9kpJt1R0wa5A7T44bYu2bYSwWabS27Zdmgw5RBOw3/ADrWFtZQ7W2g6opbS4NpIj1fx8KC3as21CznAGq5SoZjxYzt0ozLEk6k7mqwhitjm1dTJklXJLFgT84vIBG0iNqoq4JBkEbyTRZaYoDAK3D1T9XoelUog5CYPM++pB5n2002yCQQQfCpl8fZRoGQqG5n2mrAaZk6edarWFe6jOLuGQKSCL94I5gTKrBMcqC7Ya0VBey5Zc02HzqNSIJga0u10HIzlBqRsNCN8p/agK06CDIHPhpFTIp2zA8omPOa2IykIyk6Dc1aMLVxLiqrNbJK9oqOkwR6jgjwrWuCxNy32ltAbZnvl7S5obLoruGidBIpF6w1i41u7IdQpZQUaMwzDvIxFJs9rKJtbl3MXdupdR7dhUZVU9lh8OjDKQQEZUBG2sGs6WmxN21Ytgh7jZV1EIBqWIjgNTVtrGkAaAcAK9f0NhgqXsUw1cmzaJ4Ip7xHidPKsl0gamrhHI3WrFrD2bdm0IS2sCdzxLHqdzQtT2isHpHFDCWMymL1zMLWk5QPWuR02HU9Krwjg07nKjNjsd2DdhYXtMUxC+rnFtjsAo3bpw48q8dkzO5uE375Oa6M4Fq2SdTeug6noCB1MRTezNvtFLFbhU/G7m7W1f8AyUJ+e3zvZspnNccsMoAS2vqoNh1adSahKV8nq6UVHZFm4FEdo2X6mGAs2Y33Gp9nHpJzl7B2tqfF2J9or0/Rzej1F0X8I+IxecHDrbtG8zIRr3Scgg8evSt9zEY5RH/DhaH1buKso33VFBRvsd6lSqj5xLiAynaJzNq4T7Qf3q2h5zBbggSyAJeXhqNj/etepev2X/8AdYNkH1+5dUdcyQaxX8IsdrhmzLuAGk/ynes4MvGVmR0gIxdntDKoYfNB1yQdjUvdibifFg0hQ0rO41kA8uNErFpIALwcykd26vEEc/73qluHDkvbAZLi90tuCOBjiONSOhD7N4XVM6OvrAceorPirUfKrsSA4HPnVResMl1hGYmQI1B1IIHtFa2CupG6uPaCKul9SLjLkZHlV1H4JfpT9lfqq5eylWZTupINdQ+CX6UfZX6qvG81Voy9vktE5ukQATEMG2maYuhYwdZAA1JJ2AHM0tVBiSRJA0p1vMrBlYq9s50I3DIZB8q9GJxzNU2rJFrs7TshBuO3aGbnzgmRgIGw8KPuMhuqioVlLqqTlGbVHXMSYOoOu4/1UPZdoe0shQlwg5e0tKbbn1kIuMDAO3SKahbDq0PlvOJYoyk27anRcykiWOp14DnVkccmChUiAQSSoAkCSep0r0P+H4oZVL4Oe8dMZYMxvBmOg192tID3Aq9pfxOYgMUVhChtVBzGZjU+PsbmuBEdLt0qSytmOqsNYOUxqNR4HlT03wc8peo8YDEad/CS+o/5qzsok6zHT+5pIAIX+bSjQ32MK15niSEDMfEBdaeBi1AZvjCiQJdXUAnUDvCOdViq5ZzSl6IzgEMrDdcpHiOBqHsZb5IwZ2uMBrrG1aWthhmUQQAXUe9lHLmKQy6npT0TjKzPcJZ8x1Ok6QNOAHLlSzbXKpZgoMle6xLDnA4Vp7NRDtDK0FEPztfWb/T+PvpF1pklixaZJ4x4e6ps6YMzslvX5Qfcf9qbhbWFV+0vlriFSAlstbaeBLZTp5UrLmboN6cBU6stKTSNVz/hxRhZt3UfMuVrl1nAUbgrlGp5zwpYVPrj7rUIApiKSQBykzoAOZNVjFI55MgVI1cfdamLaZntoCkuQFLMqoZ4lmIAFQEDRPNogsfyHIUxXaIYkg8okdR+dNXoSsNsJibauTcsZbaZyqYq2xidlUGSfCk9/wCs33jTDnBiSeIiII5irC5v4v8Ay6HrRin2I5egnv8A1m9pqjm+s3tNNI6dKrLxPqjfmTyFFoykK70ElmAHIkknkBNP+I4hhbm7Y78AZsTh9JE97v8AClNJjgBoANgKWQNdBSSTfBWLXYwYC6yK+bDgMRAbEYcNJ0gjPp7az3LYtO9tjrbYocmVlJBglSpgirIHIeNDlA39lJT7KpoW2UBj3pAJAyjU+2vp7FoWMPh7I/y7SKerRLH2zXziAXb2HQ7NesofAuAa+pbUk8yT76yOfyZcIUQSQBudB5185i7y3cZicRINvCALZBiGZDkTQ82lvKvorjdml5/+nau3B4qpYV8tagWrOcgK+KzuTOosoCNurGhIbxlyxV6Vi0TqhzXTvmvNqxM66beR56oNG0sSTuSSfE61LahnEiQoLwdjBAAPmRUnuemtiW89j5XtLltmVlAtsyPlcbMy668veOKmZDr2a+JifeCffV3GLMSSTvE+M/1pRpG6KrfdjFcA9wlCeHzSeUbe6rR+yXOkjIAcSLlxALjPcKr2KaGRxpBimLcKFLoKhkYgsyK8AjKSVbQ6T7KybRQmJQSL1s6NBJGmp1DUkgMGAHrg3FEaC4m4HQ1qCjJibILwjME7RSjlSMwJU7VkUwAfqXEbyOhozStMoiwt+/bZi8rbBCqSfmjkNPOm4ds1oDipK+W4pSWWuNdthyoVteIPejaRRYac15eUe4kTR07UkyiE4pYuA8GUHzGldK+CX6U/ZX6qud4uFW3xOZhvzFdE+CX6U/ZX6qvO/UlWnL2+SseTm6mOA4HXnTVJHmCNetLt8IHzgD4UxI73g0V2I5ZDUMRsdZE062YIOUMBBytsddjSreoEDXMJ8Kaka+Biqo5Jmp9HLZiRdPbKx3YMSdZ4jUHwp1psltmIVg5yW1aYbKZLmDw2GvPlWe3dvIpVblxVmYViBJ32phdnyszMxiJYkmPE1WJxzTNtrEMhLW1RGIILW+1UkHcEh6ecVecZbhzqWzsHa6wLfWILxNYQdD5RTA2g86qkjmmmau1Agi3bBEEEBhqP5qEtbczlsKSYYOHynqIMR0pJfUeRoC0E+cU7aJxgXc1YsbtvN/NuP5aVb+KBmOIl0juizea0QxOpJNtqpjqOsTSGJLKoBLHQAbknYCoy3OuCNin0Txs3hqxOXGGCDAG9nh+dVc+JFQLKNbfOZa5fa4CkaADsxr1mswUDQ3Enj6x1HCQtGAv/AFE/3/8A1pUkhpMMKPr2/a37UwkAFVmCe8x3c/tyFXZ+IBD2ovNdloNu6EtxwEG2W99NzeitYTFTHdm+kTEa/JbcafKuieP8iRRgx/WrufFyw7HMqZQIuuXbNrJlVA91CAJ9df8Ad+1UTsjKI1WI3CkcARMHmK0quFKKXxKq5C5kGGdghJ55tYrGCB89f937VZJGns5EGjyTofcKFnCFWCmEdkyZ16qToaUwY8V02GYQPATSyaokVgpFlTzX7woCp/0/eFQmhALEBQSSYAAJJO8AAE0GUSJljUx94UDAmNV+8KY1q/p8ld4f5d3UsYGmXjwpbWroBYo4UAElkuAAEwJJWKnaLJF4cZcThCcsDE2PnD64r6c8a+SJyFXDLKMrjU7qQ3KvrCQ3eGzAMPA60Ec3krgzYkE4fFgbnD34+4a+aWWt4QJbF1zdxVtUILZmdUiADM8R4V9UYOh2Mg+B0NfKOjW1xlg6Ph7ocbzCnsmj2qa0i3jPZozVaR8qOdvhr6rK2397VLgUM4RiyBiFYrlLLwJUnSgDFWVhBIMwdjzBqJ6CVoWfw0oac6CM6aoTrMSpgmG4A/jvxgJOm+nTrU2WiAamuRgOJHAnWIH41eViYG/76bU60ihWxLf4NlgF/wC7e+bbUjeDqaKVspYUN2mKYvcYgrmZmzMzBZMlhWEE5WGWc2QTr3TM6cNa2XM1qwwY/K3Sxb+JzLezasqaFTn7om4666dntPDw8aOptSRVBJZF67fBZoUkzpJOaJM1dgAPeCuwyyCcqyRm03o8L3Ld662smSDxySfxoMMDluMd2IHsEmjGKuIyAxQfKma4WljoVUcN5FdH+CX6UfZX6qub4s6216FvbpXSPgl+lP2V+qrz/wBTr6cq/j5RaPJzVQx/uKaskacN6WpWBPA5tOfKiQ6meIPvrpRzSQ9ATqPA68aas8OWtJQ7TzkUatqTzn31VM55I0KfZxpynadjWZWEEcyDTA2g6T76qmc0ka0DEooIEmJOwG5J/GmdogjKileBeSzeOsDyrPbuKGBMwZDwNcpBBirKuMogsNwyAsrTxUgVRSOdwNDEZQy6S2UqTsSJEE8DRJhsXdti6lsNbMkMbtldjl2Zwd9BpSS7WliYdmUsBBKqoMBupMn2c6Wb9yWJcx4D9qzbrYEYBX1u2bhsuvy3cARGVyS4DCChI99KzC2GQEFzIuOpkdUQjhzP5bg2IusfXbLEAaDTjsKAEfl5UlsuoUhgpqgGZMKqlmI8hFIBFNQg5lnVgInaQZA86KFaGB0j/DEeLZvbMe6iOkESVYAqeMExtSlDExlaeUGaYz5QijKSoOaQrAMTJAJ5UyZJxNnxD0noDg8SD3tDbIPd1PsrPP70Ae42oIgaSYABPCTRAnZskc1NsEdRBoxb7FcV0FmiiD6QZjp808/3pUNxKcwQywRzGtSDzH3l/emsXEYTG8cxGxHMUOamWVstnF7FGyAVyBbQug7kk94RwobvZqLfY4g3CQ3aB7a28h0gDvGetDLoOHYPM8Bx68hVLduIwe27IyyFNtipAIggEa+NAS53I+8unvoTIE6Rxgg/hQbsZRH/AB3Hyx+N4nvRm+WuSYGXXXlpQPisW4dbmIvur5Q6vdchgu2YEwY09lIJoSaSl6FEmWTX0Xo28L2DtSe9Z+Qfn3Np8or5vqduPM+FbfRmLFjEdm5C2r+VDwCuPUJPuNFMnraeUD3ya8P0paazft4xRmRx2d5eZjLBjgw08q9tqTdt27tt7dwSjqVYe/Tryp2rRzaMsXZ8xdQ91VNvs1tNdtOwCNcQtMTuWmRHCI4VmJFbcRZbCMbN8M+Hdi1m4okq22ZeuwYcY8xluJBBZra2+zy2ntKTbusqwBpqGPGda52j14NNbBWLF9xcvC3iDYtlrbvYUO2fLIUqeGonQ0p2thWJu2cy2VuFCtxCbhIm0sxqN56Vqw3pHHYO1bVVVsOzO1tbqd0me9kZYbfent6aVvWwnePEXQR/uSayx7Zv3E+Dzyi3C62S98h7eU27ZWy6kZnzsxka6b1rvsSUxGJ7NEtDLhrFkRZsD6tteJ60q56UvP3bdpEOwzE3GnhA0HurDca5cZzddjdU5QrBsxMwVAA0jlFbKMd1uXjFvkq67XWe4YCoshSfVWY48edUwY9xVAuXiCVEgKu6pHvPlUMIcxRe07oW2okKwA7z6nU7xz+7Wi3bFhHvXz8owMiZInXLPM8aRJye5fgDEFbVm3ZUkkxPVQd/M0aIURF4x3vE6mlWlN6419xoD3YmJGgieAo79zs7ZPzm7q+PE1ePc2OjFfbNccjYEKPAaV034JfpR9lfqq5dXUfgl+lH2V+qrxfOd6Mn/uSsTmaxxnVstGsazwB91JViNuc66x4Uamu1Mk0aEjSZ1YD3TRqQZ6CaQrkcvMD20at7wQfOqJkZRNCnQnkQPbTAYAPjWcNpRhuFOmQcTRIg76RRZiAIJE7gEifZWfOSNen9mrzHQeNNZJwHkiRygUt33X2+FAXjXkNKWCZJnXes5BjAbpI8KYoULmYmJIVVIBYjeSdh/fhnnWZpurW0I/y8ysBuAWLBj01PsrJhkhqm2xCgFSSApzErPANOvnNRQ7HKqMzSRlVSzGN+6smlWwXaAdN2bgqjckjhTlxN23ca5ZYWyc4DIMr5G3BI58aNiYhn4wq99L6rp66XFXWYBLCKigmSTlVfWPEdFHOo+Nxd1WW5eZ1Zg7K5LKWGzEExNKLkwDAA2CgAa8YFFP1FcfQczzAjKq6KvLrPPnUzUnNV5qaxMR6vpB2303U8x+dSV+t/tNImpNawYm2zh8RiS4sIbhTLmAyrGYkD12HWmD0d6QaMtktO0Pag6xHr158iqkDgKVt9UFRRru4e/YVHurlV2dUIKMCV39RjSMyjUMZ/hpUiqmipeocTQjWVdHdBdtqZa0xdQdOLIc0edHdv4JluKmDt2yyoEdbt9mQgySAzZTPUcayZiNv6EcjVZ/8ASvspXTdjpFsxPDbYDaqJjf1uXLr40ObXZR4CgnrWsZI+i9G474zbFi63/MWliTvdQbN/EPne3jpsavkVd1ZXRirIcysDBUjiK93BekreKyWruVMRsJMJdPNSdAeY/wDyqwmuGcer47TyQ/FtYTD3mxCh7QGqH57H1VB3k8/2r5yyMQ7slgFmdWLWzlKsq8GD909JrV6SxTYu+liz3rdu52doA6XLrd0v+Q6eNX8U9I4K4bmGZLsgA5VWSJmGR+HgaSX3PY6tGOEafLMLtaVmFy29q4ja9mwAVhG6XJ26NQsyFrrds83ZDl7CljLBpBD8+VOsYoYW7fa/Zdrl0ah+6QZLHuuOPGlYe9hbaYgXkzs4i2QqNlOVhILGRuKlsdSFl7OVFL3WCZsqgW7YGYydTmPuqHthba6lvs7ZMFxJdpMQXOvjEUVrE2rVi/ZdMzXJAaVGUMscid6q38ee0bFtD2TE5mKgCGgxmfSPCl2exWgsO+DtWzdbW9JWDqemTgBzNABexjh3lbK6KBtHJZ95ptvBKveutnO+RZyDxO5p7sltQzkKigAfsoq0YNxqWyCnvsA2VF4KijwAArzLt03XLbCIUch1o7+Ia60bIDKr15nrSKjramWy4LRXqVXUvgk+lP2V+qrlprqPwSfSn7K/VV5fmfgl7fJRHMVJgRzGbbbzq1PreBoACemseNQcegmuyxWh6sYEfWE6jaiU+t4GkrJ103gUaydONOmTcRykkECdxtRToPOlAhROhO3GoWO/OmTJOJozaHUcIqZtF86TJ/vrULbU1iYDGeSOQioDqfOKVMQPCrk61rDiOJ28BVqxUggkEbEGDSZjSiBNGxHEebtxhDMxG8E6TziqmlA1c0bFcR2arzUqamaimLiNmrmlTUmjYMRuark9aBddeHTj4VC+kDkP71rWDEPMamalZqhajZsRmaqzUuak0LDiHmoZoZqiaFhxCzVU0M1U0LHUS5qiaqd6EmlsdI0YbEDDX7d42w+QMAM2WJEEqef717Fv0hgb3+b2bfUvDL/u9X3187NCTpTx1XHgSWip7s+qaGB2dekMPzFZWw+GMzYtSedtf2r58OykZGZTzUsv4U34ziV3xF7j/mP+9P8AXXaAtBrhntC2i+paRf4EA/AUm7dtW/8AEuIvQsM33RrXivfv3PXu3G6M7ke80s0H5Ff8otHSfbPQu4+2JFlCx+tckL5LvXn3Lty62Z2LNqNdgOQG1CSaqueepKfJ0RglwSqqVVSHJNdS+CT6U/ZX6quW11L4JPpT9lfqq5PM/DL2+Qrk5eCI1HGRH51Wup5z76sAcRuY3qDj0B91dYCKeEE6yI8KYrBZmdRuD1pa8DxJga1CZzacDEdKNmoZmmeRirzSB0pQ2J8KudvOimK0NzDWNzHuqTNBz6RVyIFNYtBzsfCrzDXrQSJ9lWNSekmtYtBzMVc0uaudqNiuI0GrmlTVzRsVobOtXNKmpNGxcRs0Q1jlrHWKSDV5tCN591GwYjs28Tw93KqmlZqmatZsRk1JpeapNazYhzUzUuak1rNiHmqpoJqpoWNiGTVTQTUmhYVEKd6EmhmoTQsZIuarfnQk1U0o6QzQecjQxBHWgZpPlxqmaTrQzvQGSLJoZNSqmgNRdVVSamtAJDVVdVWCSup/BJ9Kfsr9VXLK6n8En0p+yv1Vcnmfhl7fJlycvkiYqvzFSpXWAvUbc6rapUomJwIqdKlSsjBamJq6lSmMXVkmalSiIQVdSpWQCUQqVKIrLFSpUogLFSpUrAJUqVKICVKlSsYlVUqUAolVUqUBijVVKlYJKE1KlAJVSpUoDIE8KlSpQCVUqVKASVKlSsElSpUrGJXVPglAyf8AqduJb0YD4AYg/nUqVx+b+F/7sy5P/9k=',
              width: 350,
              height: 350,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      label: Text('Enter Email'),
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: passwordController,
                    obscureText: isSecured,
                    decoration: InputDecoration(
                      label: Text('Enter password'),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isSecured = !isSecured;
                          });
                        },
                        icon: Icon(Icons.remove_red_eye),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  InkWell(
                    onTap: () {
                      User user = users[emailController.text]!;
                      if (user.email == emailController.text &&
                          user.password == passwordController.text) {
                        print('logged');
                      } else {
                        print('email or password is wrong');
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.blue,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Login',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.login,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
