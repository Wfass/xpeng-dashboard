.class Lcom/xiaopeng/musicradio/netradio/logic/AreasNetRadioListLogic$1;
.super Lbkv;
.source "AreasNetRadioListLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/logic/AreasNetRadioListLogic;->doAsync(Lcom/xiaopeng/musicradio/bean/netradio/logic/AreasNetRadioListParams;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

.field final synthetic b:Lcom/xiaopeng/musicradio/netradio/logic/AreasNetRadioListLogic;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/logic/AreasNetRadioListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/logic/AreasNetRadioListLogic$1;->b:Lcom/xiaopeng/musicradio/netradio/logic/AreasNetRadioListLogic;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/netradio/logic/AreasNetRadioListLogic$1;->a:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/logic/AreasNetRadioListLogic$1;->b:Lcom/xiaopeng/musicradio/netradio/logic/AreasNetRadioListLogic;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/logic/AreasNetRadioListLogic$1;->a:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    invoke-static {v0, v1, p1, p2}, Lcom/xiaopeng/musicradio/netradio/logic/AreasNetRadioListLogic;->access$100(Lcom/xiaopeng/musicradio/netradio/logic/AreasNetRadioListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/logic/AreasNetRadioListLogic$1;->b:Lcom/xiaopeng/musicradio/netradio/logic/AreasNetRadioListLogic;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/logic/AreasNetRadioListLogic$1;->a:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/musicradio/netradio/logic/AreasNetRadioListLogic;->access$000(Lcom/xiaopeng/musicradio/netradio/logic/AreasNetRadioListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/logic/AreasNetRadioListLogic$1;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;)V

    return-void
.end method
