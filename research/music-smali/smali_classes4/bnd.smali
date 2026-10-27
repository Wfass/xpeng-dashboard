.class public Lbnd;
.super Ljava/lang/Object;
.source "SignerMusicInfoRequest.java"

# interfaces
.implements Lbnh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbnh<",
        "Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 16
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
            "Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-static {}, Lbrf;->a()Lbrf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbrf;->c(Ljava/util/List;)V

    return-void
.end method
