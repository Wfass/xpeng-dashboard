.class Lbes$3;
.super Ljava/lang/Object;
.source "RxConcentrationModel.java"

# interfaces
.implements Lio/reactivex/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbes;->a(Lber;Ljava/lang/String;IIII)V
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
        "Lbes$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbes;


# direct methods
.method constructor <init>(Lbes;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lbes$3;->a:Lbes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;)Lbes$a;
    .locals 9

    const-string v0, "RxConcentrationModel"

    const-string v1, "getConcentrationData hasresult"

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Lbes$a;

    iget-object v1, p0, Lbes$3;->a:Lbes;

    invoke-direct {v0, v1}, Lbes$a;-><init>(Lbes;)V

    .line 57
    iget-object v2, p0, Lbes$3;->a:Lbes;

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v2 .. v8}, Lbes;->a(Lbes;Lbes$a;Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;)Lbes$a;

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 51
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

    invoke-virtual/range {v0 .. v5}, Lbes$3;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;)Lbes$a;

    move-result-object p1

    return-object p1
.end method
