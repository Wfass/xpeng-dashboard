.class Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListenerInterfaceToService;
.super Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;
.source "XPDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/download/XPDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadListenerInterfaceToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/download/XPDownloadManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/download/XPDownloadManager;)V
    .locals 1

    .line 379
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;-><init>()V

    .line 380
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListenerInterfaceToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public basicTypes(IJZFDLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onDownloadCancel(JLjava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIDownloadListener onDownloadStart task id  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    .line 440
    iget-object v1, v0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListenerInterfaceToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;

    if-eqz v2, :cond_0

    const/4 v3, 0x5

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-string v12, ""

    const-string v13, ""

    move-wide v4, p1

    move-object/from16 v6, p3

    .line 442
    invoke-static/range {v2 .. v13}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->access$300(Lcom/xiaopeng/xuimanager/download/XPDownloadManager;IJLjava/lang/String;JFJLjava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onDownloadCompleted(JLjava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 459
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIDownloadListener onDownloadCompleted task id  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fileUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    .line 460
    iget-object v1, v0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListenerInterfaceToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-string v13, ""

    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v12, p4

    .line 462
    invoke-static/range {v2 .. v13}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->access$300(Lcom/xiaopeng/xuimanager/download/XPDownloadManager;IJLjava/lang/String;JFJLjava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onDownloadError(JLjava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIDownloadListener onDownloadError task id  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errorMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v13, p4

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    .line 450
    iget-object v1, v0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListenerInterfaceToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-string v12, ""

    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v13, p4

    .line 452
    invoke-static/range {v2 .. v13}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->access$300(Lcom/xiaopeng/xuimanager/download/XPDownloadManager;IJLjava/lang/String;JFJLjava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onDownloadInProgress(JLjava/lang/String;JFJ)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIDownloadListener onDownloadInProgress task id  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   percentage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v9, p6

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   byteTillNow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v10, p7

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    .line 422
    iget-object v1, v0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListenerInterfaceToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    const-string v12, ""

    const-string v13, ""

    move-wide v4, p1

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move-wide/from16 v10, p7

    .line 424
    invoke-static/range {v2 .. v13}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->access$300(Lcom/xiaopeng/xuimanager/download/XPDownloadManager;IJLjava/lang/String;JFJLjava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onDownloadPause(JLjava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 430
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIDownloadListener onDownloadStart task id  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    .line 431
    iget-object v1, v0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListenerInterfaceToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;

    if-eqz v2, :cond_0

    const/4 v3, 0x4

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-string v12, ""

    const-string v13, ""

    move-wide v4, p1

    move-object/from16 v6, p3

    .line 433
    invoke-static/range {v2 .. v13}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->access$300(Lcom/xiaopeng/xuimanager/download/XPDownloadManager;IJLjava/lang/String;JFJLjava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onDownloadStart(JLjava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 410
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIDownloadListener onDownloadStart task id  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    .line 411
    iget-object v1, v0, Lcom/xiaopeng/xuimanager/download/XPDownloadManager$DownloadListenerInterfaceToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-string v12, ""

    const-string v13, ""

    move-wide v4, p1

    move-object/from16 v6, p3

    .line 413
    invoke-static/range {v2 .. v13}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->access$300(Lcom/xiaopeng/xuimanager/download/XPDownloadManager;IJLjava/lang/String;JFJLjava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onRegisterError(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mIDownloadListener onRegisterError "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRegisterSuccess(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mIDownloadListener onRegisterSuccess "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnRegisterError(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mIDownloadListener onUnRegisterError "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnRegisterSuccess(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/XPDownloadManager;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mIDownloadListener onUnRegisterSuccess "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
