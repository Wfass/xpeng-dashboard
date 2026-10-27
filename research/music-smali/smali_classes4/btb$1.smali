.class Lbtb$1;
.super Lbkv;
.source "VipDataModelV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbtb;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/VipSaleResultV2;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbtb;


# direct methods
.method constructor <init>(Lbtb;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lbtb$1;->a:Lbtb;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/VipSaleResultV2;)V
    .locals 2

    if-eqz p1, :cond_a

    .line 67
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2;->getData()Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2;->getData()Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean;->getBannerMap()Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 68
    iget-object v0, p0, Lbtb$1;->a:Lbtb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbtb;->a(Lbtb;Z)Z

    .line 70
    iget-object v0, p0, Lbtb$1;->a:Lbtb;

    invoke-static {v0}, Lbtb;->a(Lbtb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 71
    iget-object v0, p0, Lbtb$1;->a:Lbtb;

    invoke-static {v0}, Lbtb;->b(Lbtb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    iget-object v0, p0, Lbtb$1;->a:Lbtb;

    invoke-static {v0}, Lbtb;->c(Lbtb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    iget-object v0, p0, Lbtb$1;->a:Lbtb;

    invoke-static {v0}, Lbtb;->d(Lbtb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    iget-object v0, p0, Lbtb$1;->a:Lbtb;

    invoke-static {v0}, Lbtb;->e(Lbtb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    iget-object v0, p0, Lbtb$1;->a:Lbtb;

    invoke-static {v0}, Lbtb;->f(Lbtb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    iget-object v0, p0, Lbtb$1;->a:Lbtb;

    invoke-static {v0}, Lbtb;->g(Lbtb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    iget-object v0, p0, Lbtb$1;->a:Lbtb;

    invoke-static {v0}, Lbtb;->h(Lbtb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    iget-object v0, p0, Lbtb$1;->a:Lbtb;

    invoke-static {v0}, Lbtb;->i(Lbtb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    iget-object v0, p0, Lbtb$1;->a:Lbtb;

    invoke-static {v0}, Lbtb;->j(Lbtb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2;->getData()Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean;->getBannerMap()Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;->getQqMain()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lbtb$1;->a:Lbtb;

    invoke-static {v0}, Lbtb;->a(Lbtb;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;->getQqMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;->getNeteaseMain()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lbtb$1;->a:Lbtb;

    invoke-static {v0}, Lbtb;->b(Lbtb;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;->getNeteaseMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;->getKugouMain()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lbtb$1;->a:Lbtb;

    invoke-static {v0}, Lbtb;->c(Lbtb;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;->getKugouMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;->getReadingMain()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lbtb$1;->a:Lbtb;

    invoke-static {v0}, Lbtb;->d(Lbtb;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;->getReadingMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;->getQqUserMain()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 98
    iget-object v0, p0, Lbtb$1;->a:Lbtb;

    invoke-static {v0}, Lbtb;->e(Lbtb;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;->getQqUserMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    :cond_4
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;->getNeteaseUserMain()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 102
    iget-object v0, p0, Lbtb$1;->a:Lbtb;

    invoke-static {v0}, Lbtb;->f(Lbtb;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;->getNeteaseUserMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    :cond_5
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;->getKugouUserMain()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 106
    iget-object v0, p0, Lbtb$1;->a:Lbtb;

    invoke-static {v0}, Lbtb;->g(Lbtb;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;->getKugouUserMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    :cond_6
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;->getReadingUserMain()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 110
    iget-object v0, p0, Lbtb$1;->a:Lbtb;

    invoke-static {v0}, Lbtb;->h(Lbtb;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;->getReadingUserMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    :cond_7
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;->getRadioMain()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 114
    iget-object v0, p0, Lbtb$1;->a:Lbtb;

    invoke-static {v0}, Lbtb;->i(Lbtb;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;->getRadioMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    :cond_8
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;->getRadioUserMain()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 118
    iget-object v0, p0, Lbtb$1;->a:Lbtb;

    invoke-static {v0}, Lbtb;->j(Lbtb;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2$DataBean$BannerMapBean;->getRadioUserMain()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    :cond_9
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bg;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bg;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 64
    check-cast p1, Lcom/xiaopeng/musicradio/bean/VipSaleResultV2;

    invoke-virtual {p0, p1}, Lbtb$1;->a(Lcom/xiaopeng/musicradio/bean/VipSaleResultV2;)V

    return-void
.end method
