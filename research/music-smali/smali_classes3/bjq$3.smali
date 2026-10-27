.class Lbjq$3;
.super Ljava/lang/Object;
.source "ConMainModel.java"

# interfaces
.implements Lio/reactivex/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbjq;->a(Lbjq$b;Ljava/lang/String;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function5<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;",
        "Lcom/xiaopeng/musicradio/bean/music/ConResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbjq;


# direct methods
.method constructor <init>(Lbjq;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lbjq$3;->a:Lbjq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;)Lcom/xiaopeng/musicradio/bean/music/ConResult;
    .locals 2

    const-string v0, "ConMainModel"

    const-string v1, "getConMain hasresult"

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/ConResult;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/ConResult;-><init>()V

    .line 45
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->setRmResult(Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;)V

    .line 46
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->setRankResult(Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;)V

    .line 47
    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->setXpResult(Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;)V

    .line 48
    invoke-virtual {v0, p4}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->setSingerResult(Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;)V

    .line 49
    invoke-virtual {v0, p5}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->setRadioResult(Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;)V

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 39
    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;

    move-object v2, p2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;

    move-object v3, p3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;

    move-object v4, p4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;

    move-object v5, p5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lbjq$3;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;)Lcom/xiaopeng/musicradio/bean/music/ConResult;

    move-result-object p1

    return-object p1
.end method
