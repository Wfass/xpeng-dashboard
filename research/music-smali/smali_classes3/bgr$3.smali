.class Lbgr$3;
.super Ljava/lang/Object;
.source "DolbyDataModel.java"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbgr;->a(Lbgr$a;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/BiFunction<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;",
        "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
        "Lcom/xiaopeng/musicradio/bean/music/DolbyResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbgr;


# direct methods
.method constructor <init>(Lbgr;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lbgr$3;->a:Lbgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)Lcom/xiaopeng/musicradio/bean/music/DolbyResult;
    .locals 2

    const-string v0, "DolbyDataModel"

    const-string v1, "getDolbyData hasresult"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/DolbyResult;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/DolbyResult;-><init>()V

    .line 100
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/DolbyResult;->setNeteaseZoneDolbyBean(Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;)V

    .line 101
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/music/DolbyResult;->setMusicCollectSongListBean(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;

    check-cast p2, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

    invoke-virtual {p0, p1, p2}, Lbgr$3;->a(Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)Lcom/xiaopeng/musicradio/bean/music/DolbyResult;

    move-result-object p1

    return-object p1
.end method
