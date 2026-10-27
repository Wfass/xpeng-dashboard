.class Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic$1;
.super Lbkv;
.source "NetRadioCategoryListLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic;->doAsync(Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

.field final synthetic b:Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic$1;->b:Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic$1;->a:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic$1;->b:Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic$1;->a:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    invoke-static {v0, v1, p1, p2}, Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic;->access$100(Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic$1;->b:Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic$1;->a:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic;->access$000(Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic;Lcom/xiaopeng/aicabin/logic/ILogicCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/logic/NetRadioCategoryListLogic$1;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;)V

    return-void
.end method
