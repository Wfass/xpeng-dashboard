.class public Lbqz;
.super Lbra;
.source "UsbAlbumRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbqz$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbra<",
        "Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lbra;-><init>()V

    return-void
.end method

.method public static a()Lbqz;
    .locals 1

    .line 23
    sget-object v0, Lbqz$a;->a:Lbqz;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;)Ljava/lang/String;
    .locals 0

    .line 28
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 15
    check-cast p1, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;

    invoke-virtual {p0, p1}, Lbqz;->c(Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/xiaopeng/musicradio/usb/model/b;->a()Lcom/xiaopeng/musicradio/usb/model/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/usb/model/b;->d(Ljava/util/List;)V

    return-void
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected synthetic b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 15
    check-cast p1, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;

    invoke-virtual {p0, p1}, Lbqz;->a(Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;)Z
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldRequestLogo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbAlbumRequestManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->b()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected c(Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;)Ljava/lang/String;
    .locals 2

    .line 53
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->c()Ljava/lang/String;

    move-result-object v0

    sget v1, Lbrr$a;->radio_unknown_album:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic c(Ljava/lang/Object;)Z
    .locals 0

    .line 15
    check-cast p1, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;

    invoke-virtual {p0, p1}, Lbqz;->b(Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;)Z

    move-result p1

    return p1
.end method
