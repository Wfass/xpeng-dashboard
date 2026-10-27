.class Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager$1;
.super Ljava/lang/Object;
.source "DownloadingAppManager.java"

# interfaces
.implements Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager$1;->this$0:Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssembleEvent(ILcom/xiaopeng/appstore/storeprovider/AssembleInfo;)V
    .locals 5
    .param p1, "eventType"    # I
    .param p2, "info"    # Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;

    .line 36
    const-string v0, "DownloadingAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAssembleEvent,eventType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p2}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;-><init>()V

    .line 39
    .local v0, "appInfo":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager$1;->this$0:Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;

    invoke-static {v1, v0, p2}, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;->access$000(Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;Lcom/xiaopeng/xuimanager/applist/data/AppInfo;Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;)V

    .line 40
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;->access$100()Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v1, v3, v2, v4}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 41
    return-void
.end method
