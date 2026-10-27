.class public Lcom/xiaopeng/musicradio/netradio/logic/LocalNetRadioListLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "LocalNetRadioListLogic.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.netradio.concentration/local_radio_list"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/common/StringParam;",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/netradio/logic/LocalNetRadioListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/netradio/logic/LocalNetRadioListLogic;->callbackSuccess(Lcom/xiaopeng/aicabin/logic/ILogicCallback;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/netradio/logic/LocalNetRadioListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/netradio/logic/LocalNetRadioListLogic;->callbackError(Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doAsync(Lcom/xiaopeng/musicradio/bean/common/StringParam;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 2

    .line 24
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/StringParam;->getParam()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/StringParam;->getParam()Ljava/lang/String;

    move-result-object p1

    .line 25
    :goto_0
    invoke-static {}, Lbew;->a()Lbew;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/logic/LocalNetRadioListLogic$1;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/musicradio/netradio/logic/LocalNetRadioListLogic$1;-><init>(Lcom/xiaopeng/musicradio/netradio/logic/LocalNetRadioListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    invoke-virtual {v0, p1, v1}, Lbew;->b(Ljava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method protected bridge synthetic doAsync(Ljava/lang/Object;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/xiaopeng/musicradio/bean/common/StringParam;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/netradio/logic/LocalNetRadioListLogic;->doAsync(Lcom/xiaopeng/musicradio/bean/common/StringParam;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    return-void
.end method
