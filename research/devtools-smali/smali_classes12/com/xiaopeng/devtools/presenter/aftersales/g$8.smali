.class Lcom/xiaopeng/devtools/presenter/aftersales/g$8;
.super Ljava/lang/Object;
.source "UpdateDevicesIdPresenter.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/aftersales/g;->iF()V
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

    .line 403
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$8;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 2

    .line 424
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$8;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->b(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Lcom/xiaopeng/devtools/view/aftersales/e;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/view/aftersales/e;->ah(Z)V

    .line 425
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$8;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->b(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Lcom/xiaopeng/devtools/view/aftersales/e;

    move-result-object p1

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 426
    const v1, 0x7f1004d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 425
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/xiaopeng/devtools/view/aftersales/e;->S(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "activate XPU:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$8;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    .line 428
    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->d(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fail"

    .line 427
    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3

    .line 406
    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/d;->a(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/a/a;

    move-result-object p1

    .line 407
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/lib/http/a/a;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 408
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$8;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->iD()V

    .line 409
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "activate XPU:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$8;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    .line 410
    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->d(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "triggered"

    .line 409
    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$8;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->b(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Lcom/xiaopeng/devtools/view/aftersales/e;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/view/aftersales/e;->ah(Z)V

    .line 414
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$8;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->b(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Lcom/xiaopeng/devtools/view/aftersales/e;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1004d4

    .line 415
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/devtools/view/aftersales/e;->S(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "activate XPU:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$8;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    .line 417
    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->d(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fail"

    .line 416
    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :goto_0
    return-void
.end method
