.class Lcom/xiaopeng/devtools/presenter/aftersales/g$9;
.super Ljava/lang/Object;
.source "UpdateDevicesIdPresenter.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/aftersales/g;->iE()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$9;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 0

    .line 492
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$9;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->c(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V

    .line 493
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 5

    .line 463
    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/d;->a(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/a/a;

    move-result-object p1

    .line 464
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/lib/http/a/a;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 465
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/lib/http/a/a;->getData()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/xiaopeng/devtools/bean/http/XpuActivateStatus;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/http/XpuActivateStatus;

    .line 466
    const-string v0, "UpdateDevicesIdPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$9;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/XpuActivateStatus;->getNewXpuSn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/XpuActivateStatus;->getNewXpuSn()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/XpuActivateStatus;->getXpuSn()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->a(Lcom/xiaopeng/devtools/presenter/aftersales/g;Ljava/lang/String;)Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$9;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->b(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Lcom/xiaopeng/devtools/view/aftersales/e;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$9;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->d(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/XpuActivateStatus;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/XpuActivateStatus;->getStateMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/XpuActivateStatus;->getStateDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 470
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/XpuActivateStatus;->getStateMsg()Ljava/lang/String;

    move-result-object v2

    .line 468
    :goto_1
    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/devtools/view/aftersales/e;->S(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/XpuActivateStatus;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 473
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$9;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->c(Lcom/xiaopeng/devtools/presenter/aftersales/g;)V

    .line 474
    goto :goto_3

    .line 478
    :cond_2
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$9;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->b(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Lcom/xiaopeng/devtools/view/aftersales/e;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/xiaopeng/devtools/view/aftersales/e;->ah(Z)V

    .line 480
    :goto_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$9;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->e(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 483
    :goto_3
    goto :goto_4

    .line 484
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$9;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->e(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 485
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$9;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->b(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Lcom/xiaopeng/devtools/view/aftersales/e;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1004d1

    .line 486
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 485
    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/devtools/view/aftersales/e;->S(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
