.class Lcom/xiaopeng/musicradio/vip/buying/presenter/a$1;
.super Ljava/lang/Object;
.source "VipBuyingPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/vip/buying/presenter/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/vip/buying/presenter/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/vip/buying/presenter/a;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/musicradio/vip/buying/presenter/a$1;->a:Lcom/xiaopeng/musicradio/vip/buying/presenter/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/musicradio/vip/buying/presenter/a$1;->a:Lcom/xiaopeng/musicradio/vip/buying/presenter/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/vip/buying/presenter/a;->g()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/musicradio/vip/buying/presenter/a$1;->a:Lcom/xiaopeng/musicradio/vip/buying/presenter/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/vip/buying/presenter/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsm;

    invoke-interface {v0}, Lbsm;->a()V

    :cond_0
    return-void
.end method
