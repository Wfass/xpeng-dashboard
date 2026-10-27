.class Lcom/xiaopeng/devtools/presenter/aftersales/g$5;
.super Ljava/lang/Object;
.source "UpdateDevicesIdPresenter.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/aftersales/g;->iI()V
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

    .line 257
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$5;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 1

    .line 275
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$5;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->b(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Lcom/xiaopeng/devtools/view/aftersales/e;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/view/aftersales/e;->ae(Z)V

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "replace TBOX:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$5;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    .line 277
    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->h(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fail"

    .line 276
    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 1

    .line 260
    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/d;->d(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Z

    move-result p1

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$5;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->b(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Lcom/xiaopeng/devtools/view/aftersales/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/aftersales/e;->ae(Z)V

    .line 262
    if-eqz p1, :cond_0

    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "replace TBOX:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$5;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    .line 264
    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->h(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "success"

    .line 263
    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "replace TBOX:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$5;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    .line 268
    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->h(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fail"

    .line 267
    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_0
    return-void
.end method
