.class Lcom/xiaopeng/devtools/presenter/aftersales/g$4;
.super Ljava/lang/Object;
.source "UpdateDevicesIdPresenter.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/aftersales/g;->iJ()V
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

    .line 211
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$4;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 1

    .line 229
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$4;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->b(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Lcom/xiaopeng/devtools/view/aftersales/e;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/view/aftersales/e;->ad(Z)V

    .line 230
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "replace CDU:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$4;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    .line 231
    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->i(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fail"

    .line 230
    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 1

    .line 214
    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/d;->d(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Z

    move-result p1

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$4;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->b(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Lcom/xiaopeng/devtools/view/aftersales/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/aftersales/e;->ad(Z)V

    .line 216
    if-eqz p1, :cond_0

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "replace CDU:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$4;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    .line 218
    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->i(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "success"

    .line 217
    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "replace CDU:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/g$4;->wn:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    .line 222
    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->i(Lcom/xiaopeng/devtools/presenter/aftersales/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fail"

    .line 221
    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_0
    return-void
.end method
