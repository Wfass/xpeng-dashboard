.class Lcom/xiaopeng/devtools/presenter/factorytest/c/b$2;
.super Ljava/lang/Object;
.source "UploadDevicesIdPresenter.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->jF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ym:Lcom/xiaopeng/devtools/presenter/factorytest/c/b;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/factorytest/c/b;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b$2;->ym:Lcom/xiaopeng/devtools/presenter/factorytest/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 1

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b$2;->ym:Lcom/xiaopeng/devtools/presenter/factorytest/c/b;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->a(Lcom/xiaopeng/devtools/presenter/factorytest/c/b;)Lcom/xiaopeng/devtools/view/factorytest/vehicle/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/a;->aC(Z)V

    .line 159
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 2

    .line 146
    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/d;->a(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/a/a;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lcom/xiaopeng/lib/http/a/a;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b$2;->ym:Lcom/xiaopeng/devtools/presenter/factorytest/c/b;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->a(Lcom/xiaopeng/devtools/presenter/factorytest/c/b;)Lcom/xiaopeng/devtools/view/factorytest/vehicle/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/a;->aC(Z)V

    .line 149
    if-eqz v0, :cond_1

    .line 150
    const-string p1, "UploadDevicesIdPresenter"

    const-string v0, "uploadBleMac2Cloud success"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 152
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/lib/http/a/a;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/u;->bd(Ljava/lang/String;)V

    .line 154
    :goto_1
    return-void
.end method
