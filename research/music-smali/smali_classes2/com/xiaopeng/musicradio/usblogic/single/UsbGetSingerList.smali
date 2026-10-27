.class public Lcom/xiaopeng/musicradio/usblogic/single/UsbGetSingerList;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "UsbGetSingerList.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    exported = true
    label = "USB\u6a21\u5757\u57fa\u672c\u529f\u80fd"
    name = "logic://music.usb.server.main/usb_getSingerList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/logic/bean/EmptyInputParams;",
        "Ljava/util/ArrayList<",
        "Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSync(Lcom/xiaopeng/musicradio/logic/bean/EmptyInputParams;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 2

    .line 23
    invoke-static {}, Lcom/xiaopeng/musicradio/usb/model/b;->a()Lcom/xiaopeng/musicradio/usb/model/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/model/b;->i()Ljava/util/Map;

    move-result-object p1

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usblogic/single/UsbGetSingerList;->buildSuccessResp(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doSync(Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 18
    check-cast p1, Lcom/xiaopeng/musicradio/logic/bean/EmptyInputParams;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usblogic/single/UsbGetSingerList;->doSync(Lcom/xiaopeng/musicradio/logic/bean/EmptyInputParams;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p1

    return-object p1
.end method
