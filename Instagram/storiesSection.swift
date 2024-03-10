import SwiftUI

struct StoryView: View {
    @State private var isAnimating: Bool = false
    @State private var rotationAngle: Double = 0

    var body: some View {
        ZStack {
            Circle()
                .trim(from: isAnimating ? 0.2 : 0, to: isAnimating ? 1 : 1)
                .stroke(
                    AngularGradient(gradient: Gradient(colors: [Color.red, Color.yellow, Color.purple, Color.pink]), center: .center),
                    lineWidth: isAnimating ? 0 : 3
                )
                .frame(width: 80, height: 80)
                .rotationEffect(Angle(degrees: rotationAngle))
                .animation(
                    Animation.easeInOut(duration: 1)
                        .repeatCount(1, autoreverses: true)
                        .delay(1)
                )
                .onAppear {
                    self.rotationAngle = 270
                }

            Image("pfp")
                .resizable()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
        }
        .onTapGesture {
            withAnimation {
                self.isAnimating.toggle()
            }
        }
    }
}

struct StoriesSection: View {
    @State private var isAnimating: Bool = false

    var body: some View {
        ScrollView(.horizontal){
            HStack {
                ForEach(0..<10) { _ in
                    StoryView()
                        .onTapGesture {
                            withAnimation {
                                self.isAnimating.toggle()
                            }
                        }
                }
            }
            .padding(.horizontal)
            .frame(height: 120)
        }
        //Add Story sheet later
    }
}

struct StoriesSection_Previews: PreviewProvider {
    static var previews: some View {
        StoriesSection()
    }
}
