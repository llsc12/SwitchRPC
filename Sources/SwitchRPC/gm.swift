import libnx

@_cdecl("main")
func main() {
  // write a file to root
  let file: UnsafeMutablePointer<FILE>? = fopen("/gm.txt", "w")
  if let file {
    let content = "wagwan"
    fputs(content, file)
    fclose(file)
  }
}
