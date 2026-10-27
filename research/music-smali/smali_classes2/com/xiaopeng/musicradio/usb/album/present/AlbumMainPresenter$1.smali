.class Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter$1;
.super Ljava/lang/Object;
.source "AlbumMainPresenter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter$1;->a:Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;)I
    .locals 2

    .line 130
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 134
    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 137
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 127
    check-cast p1, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;

    check-cast p2, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter$1;->a(Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;)I

    move-result p1

    return p1
.end method
