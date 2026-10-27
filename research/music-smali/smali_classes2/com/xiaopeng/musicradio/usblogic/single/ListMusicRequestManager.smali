.class public Lcom/xiaopeng/musicradio/usblogic/single/ListMusicRequestManager;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "ListMusicRequestManager.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    exported = true
    label = "\u83b7\u53d6\u5f53\u524d\u97f3\u4e50\u7684\u8be6\u7ec6\u4fe1\u606f"
    name = "logic://music.usb.server.main/music_info_list"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/common/MusicInfoParam;",
        "Lcom/xiaopeng/aicabin/DataResp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSync(Lcom/xiaopeng/musicradio/bean/common/MusicInfoParam;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 1

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/MusicInfoParam;->getParam()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/MusicInfoParam;->getParam()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    invoke-static {}, Lbrc;->a()Lbrc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/MusicInfoParam;->getParam()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbrc;->c(Ljava/util/List;)V

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usblogic/single/ListMusicRequestManager;->buildCommonSuccessResp()Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 15
    check-cast p1, Lcom/xiaopeng/musicradio/bean/common/MusicInfoParam;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usblogic/single/ListMusicRequestManager;->doSync(Lcom/xiaopeng/musicradio/bean/common/MusicInfoParam;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method
