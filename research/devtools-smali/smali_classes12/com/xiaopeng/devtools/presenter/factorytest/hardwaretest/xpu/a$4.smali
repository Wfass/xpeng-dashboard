.class Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$4;
.super Ljava/lang/Object;
.source "XpuActivatePresenter.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->iE()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xC:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$4;->xC:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 0

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$4;->xC:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)V

    .line 173
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3

    .line 150
    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/d;->a(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/a/a;

    move-result-object p1

    .line 151
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/lib/http/a/a;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 152
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/lib/http/a/a;->getData()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/xiaopeng/devtools/bean/http/XpuActivateStatus;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/http/XpuActivateStatus;

    .line 153
    const-string v0, "XpuActivatePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$4;->xC:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/XpuActivateStatus;->getStateCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/XpuActivateStatus;->getStateDesc()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;->d(ILjava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/XpuActivateStatus;->getStateCode()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 160
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$4;->xC:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->d(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_0

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$4;->xC:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)V

    .line 158
    nop

    .line 163
    :goto_0
    goto :goto_1

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$4;->xC:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->d(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 165
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$4;->xC:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;

    move-result-object p1

    const/4 v0, -0x1

    .line 166
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1004d1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;->d(ILjava/lang/String;)V

    .line 168
    :goto_1
    return-void
.end method
