.class public interface abstract Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;
.super Ljava/lang/Object;
.source "StoreProviderManagerWarpper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StoreProviderDownloadListener"
.end annotation


# virtual methods
.method public abstract onDownloadCancel(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
.end method

.method public abstract onDownloadCompleted(Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/String;)V
.end method

.method public abstract onDownloadError(Lcom/xiaopeng/xuimanager/operation/OperationResource;I)V
.end method

.method public abstract onDownloadInProgress(Lcom/xiaopeng/xuimanager/operation/OperationResource;F)V
.end method

.method public abstract onDownloadPaused(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
.end method

.method public abstract onDownloadStart(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
.end method
