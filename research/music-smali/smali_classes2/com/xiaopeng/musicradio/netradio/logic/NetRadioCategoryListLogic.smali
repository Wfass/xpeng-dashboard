.class public Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic;
.source "NetRadioCategoryListLogic.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.netradio.category/radio_list"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseOutBizMusicLogic;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;Ljava/lang/Object;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic;->callbackSuccess(Lcom/xiaopeng/aicabin/logic/ILogicCallback;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic;->callbackError(Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doAsync(Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 2

    .line 21
    invoke-static {}, Lbew;->a()Lbew;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic$1;-><init>(Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    invoke-virtual {v0, v1}, Lbew;->a(Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method
