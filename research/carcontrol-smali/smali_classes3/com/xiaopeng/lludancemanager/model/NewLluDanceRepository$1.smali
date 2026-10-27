.class Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$1;
.super Ljava/lang/Object;
.source "NewLluDanceRepository.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/operation/IOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$1;->this$0:Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadError(ILcom/xiaopeng/xuimanager/operation/OperationResource;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "resource",
            "reason"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadError reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "zxg"

    invoke-static {v0, p3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object p3, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$1;->this$0:Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;

    invoke-static {p3}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->access$000(Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;)Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 47
    iget-object p3, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$1;->this$0:Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;

    invoke-static {p3}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->access$000(Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;)Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;->onDownloadError(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V

    :cond_0
    return-void
.end method

.method public onDownloadInProgress(ILcom/xiaopeng/xuimanager/operation/OperationResource;F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "resource",
            "progress"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadInProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zxg"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$1;->this$0:Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;

    invoke-static {v0}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->access$000(Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;)Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$1;->this$0:Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;

    invoke-static {v0}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->access$000(Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;)Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;->onDownloadInProgress(ILcom/xiaopeng/xuimanager/operation/OperationResource;F)V

    :cond_0
    return-void
.end method

.method public onDownloadPaused(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "resource"
        }
    .end annotation

    const-string/jumbo v0, "zxg"

    const-string v1, "onDownloadPaused"

    .line 61
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$1;->this$0:Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;

    invoke-static {v0}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->access$000(Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;)Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$1;->this$0:Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;

    invoke-static {v0}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->access$000(Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;)Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;->onDownloadPaused(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V

    :cond_0
    return-void
.end method

.method public onOperationSourceAdd(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "operationResource"
        }
    .end annotation

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onOperationSourceAdd "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "zxg"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$1;->this$0:Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;

    invoke-static {p1}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->access$000(Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;)Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$1;->this$0:Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;

    invoke-static {p1}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->access$000(Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;)Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;->onOperationSourceAdd(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    :cond_0
    return-void
.end method

.method public onOperationSourceDelete(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "operationResource"
        }
    .end annotation

    return-void
.end method

.method public onOperationSourceExpire(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "operationResource"
        }
    .end annotation

    return-void
.end method

.method public onRemoteSourceQuerySuccess(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "remoteList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/operation/OperationResource;",
            ">;)V"
        }
    .end annotation

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRemoteSourceQuerySuccess "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "zxg"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$1;->this$0:Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;

    invoke-static {p1}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->access$000(Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;)Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$1;->this$0:Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;

    invoke-static {p1}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->access$000(Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;)Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;->onRemoteSourceQuerySuccess(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onRequestShowResourceDetail(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "operationResource"
        }
    .end annotation

    return-void
.end method
