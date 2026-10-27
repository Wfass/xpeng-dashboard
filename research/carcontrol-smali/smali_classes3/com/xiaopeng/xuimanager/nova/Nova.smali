.class public Lcom/xiaopeng/xuimanager/nova/Nova;
.super Ljava/lang/Object;
.source "Nova.java"


# static fields
.field public static final CMD_cancelDownloadResource:Ljava/lang/String; = "cancelDownloadResource"

.field public static final CMD_deleteDownloadResource:Ljava/lang/String; = "deleteDownloadResource"

.field public static final CMD_getCloudResourceByFingerprint:Ljava/lang/String; = "getCloudResourceByFingerprint"

.field public static final CMD_getCloudResourceList:Ljava/lang/String; = "getCloudResource"

.field public static final CMD_getDeletedResourceByFingerprint:Ljava/lang/String; = "getDeletedResourceByFingerprint"

.field public static final CMD_getDeletedResourceList:Ljava/lang/String; = "getDeletedResourceList"

.field public static final CMD_getDeletedResourceListInstalled:Ljava/lang/String; = "getDeletedResourceListInstalled"

.field public static final CMD_getDownloadedResourceByFingerprint:Ljava/lang/String; = "getDownloadedResourceByFingerprint"

.field public static final CMD_getDownloadedResourceList:Ljava/lang/String; = "getDownloadedResourceList"

.field public static final CMD_getDownloadedResourceListInstalled:Ljava/lang/String; = "getDownloadedResourceListInstalled"

.field public static final CMD_getFileType:Ljava/lang/String; = "getFileType"

.field public static final CMD_getSelectedResource:Ljava/lang/String; = "getSelectedResource"

.field public static final CMD_getSelectedResourceList:Ljava/lang/String; = "getSelectedResourceList"

.field public static final CMD_getSelectionMode:Ljava/lang/String; = "getSelectionMode"

.field public static final CMD_isAutoSync:Ljava/lang/String; = "isAutoSync"

.field public static final CMD_markInstalled:Ljava/lang/String; = "markInstalled"

.field public static final CMD_markInstalledArg:Ljava/lang/String; = "markInstalledArg"

.field public static final CMD_pauseDownloadResource:Ljava/lang/String; = "pauseDownloadResource"

.field public static final CMD_reportEvent:Ljava/lang/String; = "reportEvent"

.field public static final CMD_resumeDownloadResource:Ljava/lang/String; = "resumeDownloadResource"

.field public static final CMD_selectResource:Ljava/lang/String; = "selectResource"

.field public static final CMD_setAutoSync:Ljava/lang/String; = "setAutoSync"

.field public static final CMD_setFileType:Ljava/lang/String; = "setFileType"

.field public static final CMD_setHeaders:Ljava/lang/String; = "setHeaders"

.field public static final CMD_setHook:Ljava/lang/String; = "setHook"

.field public static final CMD_setSelectionMode:Ljava/lang/String; = "setSelectionMode"

.field public static final CMD_startDownloadResource:Ljava/lang/String; = "startDownloadResource"

.field public static final CMD_suspendAutoSync:Ljava/lang/String; = "suspendAutoSync"

.field public static final CMD_sync:Ljava/lang/String; = "sync"

.field public static final CMD_unselectResource:Ljava/lang/String; = "unselectResource"

.field public static final EVENT_onDownloadCanceled:Ljava/lang/String; = "onDownloadCanceled"

.field public static final EVENT_onDownloadError:Ljava/lang/String; = "onDownloadError"

.field public static final EVENT_onDownloadInProgress:Ljava/lang/String; = "onDownloadInProgress"

.field public static final EVENT_onDownloadPaused:Ljava/lang/String; = "onDownloadPaused"

.field public static final EVENT_onDownloadResumed:Ljava/lang/String; = "onDownloadResumed"

.field public static final EVENT_onDownloadStarted:Ljava/lang/String; = "onDownloadStarted"

.field public static final EVENT_onReceivePushMessage:Ljava/lang/String; = "onReceivePushMessage"

.field public static final EVENT_onResourceAdded:Ljava/lang/String; = "onResourceAdded"

.field public static final EVENT_onResourceDeleted:Ljava/lang/String; = "onResourceDeleted"

.field public static final EVENT_onResourceReady:Ljava/lang/String; = "onResourceReady"

.field public static final EVENT_onResourceUpdated:Ljava/lang/String; = "onResourceUpdated"

.field public static final EVENT_onSelectionChanged:Ljava/lang/String; = "onSelectionChanged"

.field public static final EVENT_onSyncCompleted:Ljava/lang/String; = "onSyncCompleted"

.field public static final EVENT_onSyncStart:Ljava/lang/String; = "onSyncStart"

.field public static final FILE_TYPE_RAW:Ljava/lang/String; = "raw"

.field public static final FILE_TYPE_ZIP:Ljava/lang/String; = "zip"

.field public static final HOOK_CMD_needUpgrade_ReleaseBundleInfo:Ljava/lang/String; = "needUpgrade_bundle"

.field public static final HOOK_CMD_needUpgrade_ReleaseBundleInfo_Resource:Ljava/lang/String; = "needUpgrade_bundle_resource"

.field private static final LOG_ENABLE:Z = true

.field public static final MODULE:Ljava/lang/String; = "nova"

.field public static final MULTIPLE:I = 0x1

.field public static final SINGLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "xpNova"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DEBUG(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xpNova."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static ERROR(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xpNova."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static ERROR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xpNova."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static FAILED(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xpNova."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xpFAILED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static FAILED(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xpNova."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xpFAILED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static INFO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xpNova."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static SUCCESS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xpNova."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SUCCESS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static WARN(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xpNova."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getClient()Lcom/xiaopeng/xuimanager/nova/INovaClient;
    .locals 1

    .line 68
    invoke-static {}, Lcom/xiaopeng/xuimanager/nova/NovaClient;->getInstance()Lcom/xiaopeng/xuimanager/nova/NovaClient;

    move-result-object v0

    return-object v0
.end method
