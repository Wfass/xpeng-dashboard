.class Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel$2;
.super Ljava/lang/Object;
.source "MeterBaseViewModel.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->requestMaintainData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSuccess$0$MeterBaseViewModel$2(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "body"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iResponse"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestMaintainData onFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->getException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MeterBaseViewModel"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 206
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->handleLastMaintainChanged(Lcom/xiaopeng/carcontrol/bean/MaintainInfo;)V

    .line 207
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->handleNextMaintainChanged(Lcom/xiaopeng/carcontrol/bean/MaintainInfo;)V

    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iResponse"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "MeterBaseViewModel"

    if-nez p1, :cond_0

    const-string p1, "requestMaintainData response null"

    .line 193
    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 196
    :cond_0
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v2

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestMaintainData success, response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 198
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 199
    new-instance p1, Lcom/xiaopeng/carcontrol/viewmodel/meter/-$$Lambda$MeterBaseViewModel$2$K52X23hyFwQsXQZIooJgGFiUDQ8;

    invoke-direct {p1, p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/-$$Lambda$MeterBaseViewModel$2$K52X23hyFwQsXQZIooJgGFiUDQ8;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel$2;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
