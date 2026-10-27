.class public Lcom/xiaopeng/musicradio/music/logic/xpmodel/PersonalSongListLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "PersonalSongListLogic.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.music.http/personal_song_list"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;",
        "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
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

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/logic/xpmodel/PersonalSongListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;Ljava/lang/Object;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/PersonalSongListLogic;->callbackSuccess(Lcom/xiaopeng/aicabin/logic/ILogicCallback;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/logic/xpmodel/PersonalSongListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/PersonalSongListLogic;->callbackError(Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doAsync(Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 4

    .line 19
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getAccountType()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->isNeedCache()Z

    move-result v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/xiaopeng/musicradio/music/logic/xpmodel/PersonalSongListLogic$1;

    invoke-direct {v3, p0, p2}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/PersonalSongListLogic$1;-><init>(Lcom/xiaopeng/musicradio/music/logic/xpmodel/PersonalSongListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lbev;->a(IZLjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method protected bridge synthetic doAsync(Ljava/lang/Object;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/logic/xpmodel/PersonalSongListLogic;->doAsync(Lcom/xiaopeng/musicradio/bean/music/logic/xpmusicmodel/MusicHttpParam;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    return-void
.end method
