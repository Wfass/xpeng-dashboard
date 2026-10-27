.class public Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugouZoneItemMoreLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "KugouZoneItemMoreLogic.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.music.http/kugou_zone_item_more"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugouZoneItemMoreLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;Ljava/lang/Object;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugouZoneItemMoreLogic;->callbackSuccess(Lcom/xiaopeng/aicabin/logic/ILogicCallback;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugouZoneItemMoreLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugouZoneItemMoreLogic;->callbackError(Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doAsync(Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 4

    .line 19
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getPage()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getPageSize()I

    move-result p1

    new-instance v3, Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugouZoneItemMoreLogic$1;

    invoke-direct {v3, p0, p2}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugouZoneItemMoreLogic$1;-><init>(Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugouZoneItemMoreLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lbev;->b(Ljava/lang/String;IILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method protected bridge synthetic doAsync(Ljava/lang/Object;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugouZoneItemMoreLogic;->doAsync(Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    return-void
.end method
