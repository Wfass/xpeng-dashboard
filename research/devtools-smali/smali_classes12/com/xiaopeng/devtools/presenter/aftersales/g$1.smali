.class Lcom/xiaopeng/devtools/presenter/aftersales/g$1;
.super Landroid/os/CountDownTimer;
.source "UpdateDevicesIdPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/presenter/aftersales/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/aftersales/g;JJ)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$1;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$1;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->a(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$1;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->b(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Lcom/xiaopeng/devtools/view/aftersales/e;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1004d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/devtools/view/aftersales/e;->S(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 91
    return-void
.end method
