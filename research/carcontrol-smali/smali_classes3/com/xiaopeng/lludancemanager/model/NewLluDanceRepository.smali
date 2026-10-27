.class public Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;
.super Ljava/lang/Object;
.source "NewLluDanceRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;

.field private mOperationListener:Lcom/xiaopeng/xuimanager/operation/IOperationListener;

.field private mOperationManager:Lcom/xiaopeng/xuimanager/operation/OperationManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$1;-><init>(Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;)V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->mOperationListener:Lcom/xiaopeng/xuimanager/operation/IOperationListener;

    .line 85
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getOperationManager()Lcom/xiaopeng/xuimanager/operation/OperationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->mOperationManager:Lcom/xiaopeng/xuimanager/operation/OperationManager;

    .line 86
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->mOperationListener:Lcom/xiaopeng/xuimanager/operation/IOperationListener;

    const v2, 0xf69b5

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->registerListener(ILcom/xiaopeng/xuimanager/operation/IOperationListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;)Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->mCallback:Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->mOperationManager:Lcom/xiaopeng/xuimanager/operation/OperationManager;

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->mOperationListener:Lcom/xiaopeng/xuimanager/operation/IOperationListener;

    const v2, 0xf69b5

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->unRegisterListener(ILcom/xiaopeng/xuimanager/operation/IOperationListener;)V

    return-void
.end method

.method public getDownloadStatusList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "zxg"

    const-string v1, "getDownloadStatusList"

    .line 117
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->mOperationManager:Lcom/xiaopeng/xuimanager/operation/OperationManager;

    if-eqz v1, :cond_0

    const v0, 0xf69b5

    .line 119
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->getDownloadStatusList(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "getDownloadStatusList  --> OperationManager can not work "

    .line 121
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public pauseDownload(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resource"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->mOperationManager:Lcom/xiaopeng/xuimanager/operation/OperationManager;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->pauseDownload(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "zxg"

    const-string v0, "pauseDownload  -->  OperationManager can not work "

    .line 139
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public requestLocalResources()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/operation/OperationResource;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "zxg"

    const-string v1, "requestLocalResources"

    .line 107
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->mOperationManager:Lcom/xiaopeng/xuimanager/operation/OperationManager;

    if-eqz v1, :cond_0

    const v0, 0xf69b5

    .line 109
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->getResourceList(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "requestLocalResources  --> OperationManager can not work "

    .line 111
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public requestResources()V
    .locals 2

    const-string/jumbo v0, "zxg"

    const-string v1, "requestResources"

    .line 98
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->mOperationManager:Lcom/xiaopeng/xuimanager/operation/OperationManager;

    if-eqz v1, :cond_0

    const v0, 0xf69b5

    .line 100
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->getRemoteResourceList(I)V

    goto :goto_0

    :cond_0
    const-string v1, "requestResources  --> OperationManager can not work "

    .line 102
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public resumeDownload(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resource"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->mOperationManager:Lcom/xiaopeng/xuimanager/operation/OperationManager;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->resumeDownload(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "zxg"

    const-string v0, "resumeDownload  -->  OperationManager can not work "

    .line 147
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setOperationListener(Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->mCallback:Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;

    return-void
.end method

.method public startDownload(Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resource",
            "component"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDownload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zxg"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;->mOperationManager:Lcom/xiaopeng/xuimanager/operation/OperationManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 129
    invoke-static {p2}, Lcom/xiaopeng/xuimanager/operation/OpenAction;->activity(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OpenAction;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->downloadResource(ZLcom/xiaopeng/xuimanager/operation/OperationResource;Lcom/xiaopeng/xuimanager/operation/OpenAction;)V

    goto :goto_0

    :cond_0
    const-string p1, "startDownload  -->  OperationManager can not work "

    .line 131
    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
