import 'package:flutter/material.dart';
import 'package:instagram/Core/utils/Assets.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Text('Ahmed_khedr',style: TextStyle(
            color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold
          ),),
          SizedBox(width: 4,),
          RotatedBox(quarterTurns: 3,
          child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 16,),
          ),
          Spacer(),
          icon_bar()
        ],
      ),
    );
  }
}


























class icon_bar extends StatelessWidget {
  const icon_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
                width: 28,
                height: 28,
                child: Image.asset(
                  Assets.threads,
                  fit: BoxFit.cover,
                )),
            Positioned(
                right: -5,
                top: -9,
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Color(0xffff0034), shape: BoxShape.circle),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ))
          ],
        ),
        SizedBox(
          width: 16,
        ),
        SizedBox(
            width: 24,
            height: 24,
            child: Image.asset(
              Assets.AddBost,
              fit: BoxFit.cover,
            )),
        SizedBox(
          width: 16,
        ),
        SizedBox(
            width: 28,
            height: 28,
            child: Image.asset(
              Assets.menu,
              fit: BoxFit.cover,
            )),
      ],
    );
  }
}
