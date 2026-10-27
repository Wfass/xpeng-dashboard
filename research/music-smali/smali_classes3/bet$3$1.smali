.class Lbet$3$1;
.super Lbnl$a;
.source "RxMusicModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbet$3;->a()Lbnl$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbnl$a<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbet$3;


# direct methods
.method constructor <init>(Lbet$3;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lbet$3$1;->a:Lbet$3;

    invoke-direct {p0}, Lbnl$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 229
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

    invoke-virtual {p0, p1}, Lbet$3$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 2

    const-string v0, "RxMusicModel"

    const-string v1, "getRankMusicSongList response"

    .line 232
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-super {p0, p1}, Lbnl$a;->a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V

    return-void
.end method
