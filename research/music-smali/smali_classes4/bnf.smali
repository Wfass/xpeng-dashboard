.class public Lbnf;
.super Ljava/lang/Object;
.source "UsbMusicInfoRequest.java"

# interfaces
.implements Lbnh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbnh<",
        "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
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
.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    .line 28
    invoke-static {}, Lbrc;->a()Lbrc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbrc;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-static {}, Lbrc;->a()Lbrc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbrc;->c(Ljava/util/List;)V

    return-void
.end method
