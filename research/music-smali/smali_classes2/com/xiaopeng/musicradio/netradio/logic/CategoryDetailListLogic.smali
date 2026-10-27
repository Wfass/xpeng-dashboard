.class public Lcom/xiaopeng/musicradio/netradio/logic/CategoryDetailListLogic;
.super Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;
.source "CategoryDetailListLogic.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicImpl;
    name = "logic://musicradio.netradio.category/detail_radio_list"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic<",
        "Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/logic/BaseBizMusicLogic;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/netradio/logic/CategoryDetailListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/netradio/logic/CategoryDetailListLogic;->callbackSuccess(Lcom/xiaopeng/aicabin/logic/ILogicCallback;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/netradio/logic/CategoryDetailListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/netradio/logic/CategoryDetailListLogic;->callbackError(Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doAsync(Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 4

    .line 22
    invoke-static {}, Lbew;->a()Lbew;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->getPage()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;->getPageSize()I

    move-result p1

    new-instance v3, Lcom/xiaopeng/musicradio/netradio/logic/CategoryDetailListLogic$1;

    invoke-direct {v3, p0, p2}, Lcom/xiaopeng/musicradio/netradio/logic/CategoryDetailListLogic$1;-><init>(Lcom/xiaopeng/musicradio/netradio/logic/CategoryDetailListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lbew;->a(IIILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method protected bridge synthetic doAsync(Ljava/lang/Object;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/netradio/logic/CategoryDetailListLogic;->doAsync(Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    return-void
.end method
