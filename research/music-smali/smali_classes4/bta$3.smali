.class Lbta$3;
.super Lbkv;
.source "VipDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbta;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/UserBuyUrlResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbta;


# direct methods
.method constructor <init>(Lbta;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lbta$3;->a:Lbta;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 140
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$az;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$az;-><init>(Lcom/xiaopeng/musicradio/bean/UserBuyUrl;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/UserBuyUrlResult;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/UserBuyUrlResult;->getData()Lcom/xiaopeng/musicradio/bean/UserBuyUrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$az;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/UserBuyUrlResult;->getData()Lcom/xiaopeng/musicradio/bean/UserBuyUrl;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$az;-><init>(Lcom/xiaopeng/musicradio/bean/UserBuyUrl;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 130
    check-cast p1, Lcom/xiaopeng/musicradio/bean/UserBuyUrlResult;

    invoke-virtual {p0, p1}, Lbta$3;->a(Lcom/xiaopeng/musicradio/bean/UserBuyUrlResult;)V

    return-void
.end method
