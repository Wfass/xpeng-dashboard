.class public Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "KugooSingerListLogic.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.music.http/kugoo_singer_list"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean;",
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

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;Ljava/lang/Object;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic;->callbackSuccess(Lcom/xiaopeng/aicabin/logic/ILogicCallback;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic;->callbackError(Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doAsync(Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 6

    .line 19
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getAccountType()I

    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getAreaCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getTypeCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getPage()I

    move-result v4

    new-instance v5, Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic$1;

    invoke-direct {v5, p0, p2}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic$1;-><init>(Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    .line 19
    invoke-virtual/range {v0 .. v5}, Lbev;->a(ILjava/lang/String;Ljava/lang/String;ILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method protected bridge synthetic doAsync(Ljava/lang/Object;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/KugooSingerListLogic;->doAsync(Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    return-void
.end method
