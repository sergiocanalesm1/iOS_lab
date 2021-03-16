
import SwiftUI


struct MyFirstApp: View {
    var body: some View {
        VStack {
            HStack {
                Text("My First App")
                    .font(.title3)
                    .foregroundColor(.white)
                Spacer()
            }
            .padding()
            .background(Color("primary"))
            Spacer()
            ZStack {
                Image("labGirl")
                    .resizable()
                    .frame(width: 350, height: 200)
                    .padding(.top, 50)
                Text("This is the Mobile Development SwiftUI Layout Tutorial!")
                    .font(.title2)
                    .bold()
                    .foregroundColor(Color("primary"))
                    .padding(EdgeInsets(top: 0, leading: 190, bottom: 60 ,trailing: 0))
            }
            Text( """
                "The more I deal with the work as something that is my own, as something that is personal, the more successful it is." --
                Marian Bantjes, designes and author
                """)
                .fontWeight(.light)
                .padding(35)
                .multilineTextAlignment(.center)
            Text("LOG OUT!")
                .frame(minWidth: 0, maxWidth: 100, minHeight: 0,maxHeight: 5)
                .font(.system(size: 18))
                .padding()
                .foregroundColor(.white)
                .background(Color("primary"))
                .padding(.bottom, 100)
        }
    }
}

struct MyFirstApp_Previews: PreviewProvider {
    static var previews: some View {
        MyFirstApp()
    }
}
