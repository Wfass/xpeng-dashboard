.class Lbta$1;
.super Lbkv;
.source "VipDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbta;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/VipSaleResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbta;


# direct methods
.method constructor <init>(Lbta;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lbta$1;->a:Lbta;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/VipSaleResult;)V
    .locals 2

    if-eqz p1, :cond_5

    .line 66
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResult;->getData()Lcom/xiaopeng/musicradio/bean/VipSaleResult$DataBean;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResult;->getData()Lcom/xiaopeng/musicradio/bean/VipSaleResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/VipSaleResult$DataBean;->getBannerMap()Lcom/xiaopeng/musicradio/bean/VipSaleResult$DataBean$BannerMapBean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 67
    iget-object v0, p0, Lbta$1;->a:Lbta;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbta;->a(Lbta;Z)Z

    .line 68
    iget-object v0, p0, Lbta$1;->a:Lbta;

    invoke-static {v0}, Lbta;->a(Lbta;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    iget-object v0, p0, Lbta$1;->a:Lbta;

    invoke-static {v0}, Lbta;->b(Lbta;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    iget-object v0, p0, Lbta$1;->a:Lbta;

    invoke-static {v0}, Lbta;->c(Lbta;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 71
    iget-object v0, p0, Lbta$1;->a:Lbta;

    invoke-static {v0}, Lbta;->d(Lbta;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    iget-object v0, p0, Lbta$1;->a:Lbta;

    invoke-static {v0}, Lbta;->e(Lbta;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResult;->getData()Lcom/xiaopeng/musicradio/bean/VipSaleResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResult$DataBean;->getBannerMap()Lcom/xiaopeng/musicradio/bean/VipSaleResult$DataBean$BannerMapBean;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResult$DataBean$BannerMapBean;->getNeteaseMain()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lbta$1;->a:Lbta;

    invoke-static {v0}, Lbta;->a(Lbta;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResult$DataBean$BannerMapBean;->getNeteaseMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResult$DataBean$BannerMapBean;->getQqMain()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lbta$1;->a:Lbta;

    invoke-static {v0}, Lbta;->b(Lbta;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResult$DataBean$BannerMapBean;->getQqMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResult$DataBean$BannerMapBean;->getReadingMain()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lbta$1;->a:Lbta;

    invoke-static {v0}, Lbta;->c(Lbta;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResult$DataBean$BannerMapBean;->getReadingMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResult$DataBean$BannerMapBean;->getUserMain()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lbta$1;->a:Lbta;

    invoke-static {v0}, Lbta;->d(Lbta;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResult$DataBean$BannerMapBean;->getUserMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResult$DataBean$BannerMapBean;->getKugouMain()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 87
    iget-object v0, p0, Lbta$1;->a:Lbta;

    invoke-static {v0}, Lbta;->e(Lbta;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResult$DataBean$BannerMapBean;->getKugouMain()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    :cond_4
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bf;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bf;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 63
    check-cast p1, Lcom/xiaopeng/musicradio/bean/VipSaleResult;

    invoke-virtual {p0, p1}, Lbta$1;->a(Lcom/xiaopeng/musicradio/bean/VipSaleResult;)V

    return-void
.end method
