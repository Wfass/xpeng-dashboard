.class public interface abstract Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository$IOperationCallback;
.super Ljava/lang/Object;
.source "NewLluDanceRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lludancemanager/model/NewLluDanceRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOperationCallback"
.end annotation


# virtual methods
.method public abstract onDownloadError(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
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
.end method

.method public abstract onDownloadInProgress(ILcom/xiaopeng/xuimanager/operation/OperationResource;F)V
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
.end method

.method public abstract onDownloadPaused(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V
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
.end method

.method public abstract onOperationSourceAdd(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operationResource"
        }
    .end annotation
.end method

.method public abstract onOperationSourceDelete(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operationResource"
        }
    .end annotation
.end method

.method public abstract onOperationSourceExpire(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operationResource"
        }
    .end annotation
.end method

.method public abstract onRemoteSourceQuerySuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/operation/OperationResource;",
            ">;)V"
        }
    .end annotation
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
