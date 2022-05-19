import AVKit
//1. Create a URL
if let url = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4") {
    //2. Create AVPlayer object
    let asset = AVAsset(url: url)
    let playerItem = AVPlayerItem(asset: asset)
    let player = AVPlayer(playerItem: playerItem)
    
    //3. Create AVPlayerLayer object
    let playerLayer = AVPlayerLayer(player: player)
    playerLayer.frame = self.videoView.bounds //bounds of the view in which AVPlayer should be displayed
    playerLayer.videoGravity = .resizeAspect
    
    //4. Add playerLayer to view's layer
    self.videoView.layer.addSublayer(playerLayer)
    
    //5. Play Video
    player.play()
}
