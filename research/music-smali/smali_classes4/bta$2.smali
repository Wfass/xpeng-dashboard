.class Lbta$2;
.super Lbkv;
.source "VipDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbta;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/VipUrlResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbta;


# direct methods
.method constructor <init>(Lbta;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lbta$2;->a:Lbta;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 123
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bd;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bd;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/VipUrlResult;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipUrlResult;->getData()Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipUrlResult;->getData()Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;->getBuyUrlList()Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipUrlResult;->getData()Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;->getBuyUrlList()Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;->getQqBuyUrl()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipUrlResult;->getData()Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;->getBuyUrlList()Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;->getNeteaseBuyUrl()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipUrlResult;->getData()Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;->getBuyUrlList()Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;->getReadingBuyUrl()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipUrlResult;->getData()Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;->getBuyUrlList()Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;->getDolbyExchangeUrl()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lbta$2;->a:Lbta;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbta;->b(Lbta;Z)Z

    .line 113
    iget-object v0, p0, Lbta$2;->a:Lbta;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipUrlResult;->getData()Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;->getBuyUrlList()Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;->getQqBuyUrl()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lbta;->a(Lbta;Lcom/xiaopeng/musicradio/bean/VipUrlInfo;)Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    .line 114
    iget-object v0, p0, Lbta$2;->a:Lbta;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipUrlResult;->getData()Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;->getBuyUrlList()Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;->getNeteaseBuyUrl()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lbta;->b(Lbta;Lcom/xiaopeng/musicradio/bean/VipUrlInfo;)Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    .line 115
    iget-object v0, p0, Lbta$2;->a:Lbta;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipUrlResult;->getData()Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;->getBuyUrlList()Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;->getReadingBuyUrl()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lbta;->c(Lbta;Lcom/xiaopeng/musicradio/bean/VipUrlInfo;)Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    .line 116
    iget-object v0, p0, Lbta$2;->a:Lbta;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipUrlResult;->getData()Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean;->getBuyUrlList()Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipUrlResult$DataBean$BuyUrlListBean;->getDolbyExchangeUrl()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lbta;->d(Lbta;Lcom/xiaopeng/musicradio/bean/VipUrlInfo;)Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    .line 117
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bd;

    invoke-direct {p1, v1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bd;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 104
    check-cast p1, Lcom/xiaopeng/musicradio/bean/VipUrlResult;

    invoke-virtual {p0, p1}, Lbta$2;->a(Lcom/xiaopeng/musicradio/bean/VipUrlResult;)V

    return-void
.end method
