.class Lcom/xiaopeng/musicradio/vip/buying/presenter/a$2;
.super Ljava/lang/Object;
.source "VipBuyingPresenter.java"

# interfaces
.implements Lbsz$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/vip/buying/presenter/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaopeng/musicradio/vip/buying/presenter/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/vip/buying/presenter/a;Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/musicradio/vip/buying/presenter/a$2;->b:Lcom/xiaopeng/musicradio/vip/buying/presenter/a;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/vip/buying/presenter/a$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/vip/buying/presenter/a$2;->b:Lcom/xiaopeng/musicradio/vip/buying/presenter/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/vip/buying/presenter/a;->a(Lcom/xiaopeng/musicradio/vip/buying/presenter/a;Z)Z

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccountInfo.error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VipBuyingPresenter"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/musicradio/vip/buying/presenter/a$2;->b:Lcom/xiaopeng/musicradio/vip/buying/presenter/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/vip/buying/presenter/a;->g()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/musicradio/vip/buying/presenter/a$2;->b:Lcom/xiaopeng/musicradio/vip/buying/presenter/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/vip/buying/presenter/a;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbsm;

    invoke-interface {p1}, Lbsm;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/UserAccountInfo;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/musicradio/vip/buying/presenter/a$2;->b:Lcom/xiaopeng/musicradio/vip/buying/presenter/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/vip/buying/presenter/a;->a(Lcom/xiaopeng/musicradio/vip/buying/presenter/a;Z)Z

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccountInfo.response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VipBuyingPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/musicradio/vip/buying/presenter/a$2;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->setOpenId(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/vip/buying/presenter/a$2;->b:Lcom/xiaopeng/musicradio/vip/buying/presenter/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/vip/buying/presenter/a;->g()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/vip/buying/presenter/a$2;->b:Lcom/xiaopeng/musicradio/vip/buying/presenter/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/vip/buying/presenter/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsm;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->getBuyVipUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lbsm;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/vip/buying/presenter/a$2;->b:Lcom/xiaopeng/musicradio/vip/buying/presenter/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/vip/buying/presenter/a;->g()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/musicradio/vip/buying/presenter/a$2;->b:Lcom/xiaopeng/musicradio/vip/buying/presenter/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/vip/buying/presenter/a;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbsm;

    invoke-interface {p1}, Lbsm;->a()V

    :cond_1
    :goto_0
    return-void
.end method
