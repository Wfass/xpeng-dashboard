.class public Lbrf;
.super Lbra;
.source "UsbSingerRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrf$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbra<",
        "Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lbra;-><init>()V

    return-void
.end method

.method public static a()Lbrf;
    .locals 1

    .line 24
    sget-object v0, Lbrf$a;->a:Lbrf;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 16
    check-cast p1, Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;

    invoke-virtual {p0, p1}, Lbrf;->c(Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;)Ljava/lang/String;

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

    .line 44
    invoke-static {}, Lcom/xiaopeng/musicradio/usb/model/b;->a()Lcom/xiaopeng/musicradio/usb/model/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/usb/model/b;->c(Ljava/util/List;)V

    return-void
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected synthetic b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 16
    check-cast p1, Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;

    invoke-virtual {p0, p1}, Lbrf;->a(Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;)Z
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldRequestLogo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbSingerRequestManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected c(Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;)Ljava/lang/String;
    .locals 2

    .line 54
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;->b()Ljava/lang/String;

    move-result-object v0

    sget v1, Lbrr$a;->music_unknow_singer:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic c(Ljava/lang/Object;)Z
    .locals 0

    .line 16
    check-cast p1, Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;

    invoke-virtual {p0, p1}, Lbrf;->b(Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;)Z

    move-result p1

    return p1
.end method
