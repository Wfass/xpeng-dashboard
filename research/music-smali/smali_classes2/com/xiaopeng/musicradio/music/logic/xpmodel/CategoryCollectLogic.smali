.class public Lcom/xiaopeng/musicradio/music/logic/xpmodel/CategoryCollectLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "CategoryCollectLogic.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.music.http/category_collect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CategoryCollectLogic"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/logic/xpmodel/CategoryCollectLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;Ljava/lang/Object;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/CategoryCollectLogic;->callbackSuccess(Lcom/xiaopeng/aicabin/logic/ILogicCallback;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/logic/xpmodel/CategoryCollectLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/CategoryCollectLogic;->callbackError(Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doAsync(Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 8

    .line 19
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getType()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getSort()I

    move-result v3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getPage()I

    move-result v4

    .line 20
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getAccountType()I

    move-result v5

    new-instance v7, Lcom/xiaopeng/musicradio/music/logic/xpmodel/CategoryCollectLogic$1;

    invoke-direct {v7, p0, p2}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/CategoryCollectLogic$1;-><init>(Lcom/xiaopeng/musicradio/music/logic/xpmodel/CategoryCollectLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    const-string v6, "CategoryCollectLogic"

    .line 19
    invoke-virtual/range {v0 .. v7}, Lbev;->a(Ljava/lang/String;IIIILjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method protected bridge synthetic doAsync(Ljava/lang/Object;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/CategoryCollectLogic;->doAsync(Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    return-void
.end method
