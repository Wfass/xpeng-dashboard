.class public interface abstract Lcom/xiaopeng/xuimanager/operation/IOperationListener;
.super Ljava/lang/Object;
.source "IOperationListener.java"


# virtual methods
.method public onDownloadCancel(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0

    return-void
.end method

.method public onDownloadError(ILcom/xiaopeng/xuimanager/operation/OperationResource;I)V
    .locals 0

    return-void
.end method

.method public onDownloadInProgress(ILcom/xiaopeng/xuimanager/operation/OperationResource;F)V
    .locals 0

    return-void
.end method

.method public onDownloadPaused(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0

    return-void
.end method

.method public onDownloadStart(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0

    return-void
.end method

.method public onDownloadStatusChanged(ILcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onOperationResourceSyncCompleted(ILcom/xiaopeng/xuimanager/operation/OperationSyncResult;)V
    .locals 0

    return-void
.end method

.method public onOperationResourceUpdated(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0

    return-void
.end method

.method public onOperationSourceAdd(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0

    return-void
.end method

.method public onOperationSourceDelete(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0

    return-void
.end method

.method public onOperationSourceExpire(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0

    return-void
.end method

.method public onOperationSourceSelected(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onOperationSourceSelectionChanged(I)V
    .locals 0

    return-void
.end method

.method public onOperationSourceUnselected(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onRemoteSourceQueryFailed(II)V
    .locals 0

    return-void
.end method

.method public onRemoteSourceQuerySuccess(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/operation/OperationResource;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRequestShowResourceDetail(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onResourceDownloadFailed(ILcom/xiaopeng/xuimanager/operation/FailedInfo;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
