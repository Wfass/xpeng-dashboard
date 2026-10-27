.class Lcom/xiaopeng/carcontrol/IpcRouterService$2;
.super Ljava/lang/Object;
.source "IpcRouterService.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/IpcRouterService;->showFaultDetailView(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/IpcRouterService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/IpcRouterService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 386
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/IpcRouterService$2;->this$0:Lcom/xiaopeng/carcontrol/IpcRouterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnFailed Detail Result"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpcRouterService"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/IpcRouterService$2;->this$0:Lcom/xiaopeng/carcontrol/IpcRouterService;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/IpcRouterService;->access$000(Lcom/xiaopeng/carcontrol/IpcRouterService;)Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->handleFaultDetailData(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnSuccess Detail Result"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpcRouterService"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/IpcRouterService$2;->this$0:Lcom/xiaopeng/carcontrol/IpcRouterService;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/IpcRouterService;->access$000(Lcom/xiaopeng/carcontrol/IpcRouterService;)Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->handleFaultDetailData(Ljava/lang/String;)V

    return-void
.end method
