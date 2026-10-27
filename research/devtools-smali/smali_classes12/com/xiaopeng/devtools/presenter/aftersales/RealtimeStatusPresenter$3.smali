.class Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3;
.super Ljava/lang/Object;
.source "RealtimeStatusPresenter.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->ij()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 1

    .line 232
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->c(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Lcom/xiaopeng/devtools/bean/http/SimStatus;

    move-result-object p1

    const-string v0, "UNKNOWN"

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/bean/http/SimStatus;->setActivate(Ljava/lang/String;)V

    .line 233
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->c(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Lcom/xiaopeng/devtools/bean/http/SimStatus;

    move-result-object p1

    const-string v0, "UNKNOWN"

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/bean/http/SimStatus;->setTotalFlow(Ljava/lang/String;)V

    .line 234
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->c(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Lcom/xiaopeng/devtools/bean/http/SimStatus;

    move-result-object p1

    const-string v0, "UNKNOWN"

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/bean/http/SimStatus;->setRestFlow(Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->e(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)V

    .line 236
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3

    .line 199
    const-string v0, "RealtimeStatusPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iResponse : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->c(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Lcom/xiaopeng/devtools/bean/http/SimStatus;

    move-result-object v0

    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/bean/http/SimStatus;->setActivate(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->c(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Lcom/xiaopeng/devtools/bean/http/SimStatus;

    move-result-object v0

    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/bean/http/SimStatus;->setTotalFlow(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->c(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Lcom/xiaopeng/devtools/bean/http/SimStatus;

    move-result-object v0

    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/bean/http/SimStatus;->setRestFlow(Ljava/lang/String;)V

    .line 203
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 204
    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/d;->a(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/a/a;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Lcom/xiaopeng/lib/http/a/a;->getCode()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 206
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/lib/http/a/a;->getData()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/xiaopeng/devtools/bean/http/CellularServerBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/http/CellularServerBean;

    .line 207
    const-string v0, "0000"

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/CellularServerBean;->getRespCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/CellularServerBean;->getRespInfo()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3$1;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3;)V

    .line 209
    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 208
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 210
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/http/CellularBean;

    .line 211
    const-string v0, "0000"

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/CellularBean;->getRespCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->d(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/CellularBean;->getIccid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->c(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Lcom/xiaopeng/devtools/bean/http/SimStatus;

    move-result-object v0

    const v1, 0x7f1002c0

    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/d;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/bean/http/SimStatus;->setActivate(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->c(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Lcom/xiaopeng/devtools/bean/http/SimStatus;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/CellularBean;->getTotalFlow()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/CellularBean;->getFlowUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/bean/http/SimStatus;->setTotalFlow(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->c(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Lcom/xiaopeng/devtools/bean/http/SimStatus;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/CellularBean;->getRestFlow()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/CellularBean;->getFlowUnit()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/bean/http/SimStatus;->setRestFlow(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->c(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Lcom/xiaopeng/devtools/bean/http/SimStatus;

    move-result-object p1

    const v0, 0x7f1002c1

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/d;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/bean/http/SimStatus;->setActivate(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->c(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Lcom/xiaopeng/devtools/bean/http/SimStatus;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/CellularBean;->getRespDesc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/bean/http/SimStatus;->setActivate(Ljava/lang/String;)V

    .line 222
    :goto_0
    goto :goto_1

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->c(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Lcom/xiaopeng/devtools/bean/http/SimStatus;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/http/CellularServerBean;->getRespDesc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/bean/http/SimStatus;->setActivate(Ljava/lang/String;)V

    .line 227
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$3;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->e(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)V

    .line 228
    return-void
.end method
