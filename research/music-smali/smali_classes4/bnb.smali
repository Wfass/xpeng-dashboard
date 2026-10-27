.class public Lbnb;
.super Ljava/lang/Object;
.source "AlbumMusicInfoRequest.java"

# interfaces
.implements Lbnh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbnh<",
        "Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-static {}, Lbqz;->a()Lbqz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbqz;->c(Ljava/util/List;)V

    return-void
.end method
