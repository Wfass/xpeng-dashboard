.class public interface abstract Lcom/xiaopeng/xuimanager/nova/INovaClient;
.super Ljava/lang/Object;
.source "INovaClient.java"


# virtual methods
.method public abstract cancelDownloadResource(Lcom/xiaopeng/xuimanager/nova/NovaResource;)V
.end method

.method public abstract deleteDownloadResource(ILjava/lang/String;)V
.end method

.method public abstract getCloudResource(ILjava/lang/String;)Lcom/xiaopeng/xuimanager/nova/NovaResource;
.end method

.method public abstract getCloudResource(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/nova/NovaResource;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeletedResource(ILjava/lang/String;)Lcom/xiaopeng/xuimanager/nova/NovaResource;
.end method

.method public abstract getDeletedResource(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/nova/NovaResource;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeletedResource(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/nova/NovaResource;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDownloadStatus(Lcom/xiaopeng/xuimanager/nova/NovaResource;)Lcom/xiaopeng/xuimanager/nova/NovaDownloadStatus;
.end method

.method public abstract getDownloadStatusList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/nova/NovaDownloadStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDownloadedResource(ILjava/lang/String;)Lcom/xiaopeng/xuimanager/nova/NovaResource;
.end method

.method public abstract getDownloadedResource(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/nova/NovaResource;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDownloadedResource(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/nova/NovaResource;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFileType(I)Ljava/lang/String;
.end method

.method public abstract getSelectedResource(I)Lcom/xiaopeng/xuimanager/nova/NovaResource;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSelectedResourceList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/nova/NovaResource;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSelectionMode(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isAutoSync(I)Z
.end method

.method public abstract markInstalled(ILcom/xiaopeng/xuimanager/nova/NovaResource;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract markInstalled(ILcom/xiaopeng/xuimanager/nova/NovaResource;I)V
.end method

.method public abstract pauseDownloadResource(Lcom/xiaopeng/xuimanager/nova/NovaResource;)V
.end method

.method public abstract register(ILcom/xiaopeng/xuimanager/nova/NovaListener;)V
.end method

.method public abstract reportEvent(Lcom/xiaopeng/xuimanager/nova/NovaResource;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract resumeDownloadResource(Lcom/xiaopeng/xuimanager/nova/NovaResource;)V
.end method

.method public abstract selectResource(ILjava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setAutoSync(IZ)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setFileType(ILjava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setHeaders(ILandroid/os/Bundle;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setHook(ILcom/xiaopeng/xuimanager/nova/INovaClientHook;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setSelectionMode(II)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setupApp(ILcom/xiaopeng/xuimanager/nova/NovaAppConfig;)V
.end method

.method public startDownloadResource(Lcom/xiaopeng/xuimanager/nova/NovaResource;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 136
    invoke-interface {p0, p1, v0, v1}, Lcom/xiaopeng/xuimanager/nova/INovaClient;->startDownloadResource(Lcom/xiaopeng/xuimanager/nova/NovaResource;ZLcom/xiaopeng/xuimanager/nova/NovaOpenAction;)V

    return-void
.end method

.method public abstract startDownloadResource(Lcom/xiaopeng/xuimanager/nova/NovaResource;ZLcom/xiaopeng/xuimanager/nova/NovaOpenAction;)V
.end method

.method public abstract suspendAutoSync(IZ)V
.end method

.method public abstract sync(I)V
.end method

.method public abstract unregister(ILcom/xiaopeng/xuimanager/nova/NovaListener;)V
.end method

.method public abstract unselectResource(ILjava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
