# docker_tutorial
# List of Docker commands


- docker run imagename
    > <p dir="rtl" align="right">bir image run etmek icin</p>

- docker ps
    > <p dir="rtl" align="right">calisan docker kontainerleri gostermek</p>

- docker ps -a
    > <p dir="rtl" align="right">tum konteinerleri hatta exit olanlari gostermek</p>

- docker rm containerID
    > <p dir="rtl" align="right">calismayan konteineri silmek otomatik calistirdiktan sonra silinmesi icin docker run --rm</p>

- docker container prune
    > <p dir="rtl" align="right">tum gecmisteki docker konteinerleri silmek icindir</p>

- docker rmi imageID
    > <p dir="rtl" align="right">bir image silmek icindir bunun icin calisan kontaineri silmek gerek</p>

- docker kill containerID
    > <p dir="rtl" align="right">docker calisan containeri silmek </p>
_________________________________________________________________________________________________
- docker build -t imageName:tagVersion
    > <p dir="rtl" align="right">image yaratmak icin image ismi ve versiyonun yazmak lazim</p>

- docker run -d -p port:port 'imageName':'imageVersion'
    > <p dir="rtl" align="right">imagein calismasi icin port tanimlamamiz gerek</p>
__________________________________________________________________________________________________
- docker login -u userName
    > <p dir="rtl" align="right">dockerhub girmek icin username password</p>

- docker tag imageId userName/yourDesiredNameForImage
    > <p dir="rtl" align="right">daha once yaratmis oldugumuz image icin bir tagName vermek</p>

- docker push userName/yourDesiredNameForImage
    > <p dir="rtl" align="right">kendi dockerhub hesabiniza yuklemek icindir</p>
___________________________________________________________________________________________________
- docker pull userName/yourDesiredNameForImage
    > <p dir="rtl" align="right">bir imagei dockerhubdan almak icin. bunun icin once mevcut image silimesi gerek</p>

