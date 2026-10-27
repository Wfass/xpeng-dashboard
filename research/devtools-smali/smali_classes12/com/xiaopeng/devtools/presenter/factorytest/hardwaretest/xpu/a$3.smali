.class Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$3;
.super Ljava/lang/Object;
.source "XpuActivatePresenter.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->jv()V
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

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$3;->xC:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 2

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$3;->xC:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;

    move-result-object p1

    .line 114
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1004d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    const/4 v1, 0x3

    invoke-interface {p1, v1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;->d(ILjava/lang/String;)V

    .line 115
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3

    .line 102
    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/d;->a(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/a/a;

    move-result-object p1

    .line 103
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/lib/http/a/a;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$3;->xC:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->iD()V

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$3;->xC:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;

    move-result-object p1

    const/4 v0, 0x3

    .line 107
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1004d4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;->d(ILjava/lang/String;)V

    .line 109
    :goto_0
    return-void
.end method
