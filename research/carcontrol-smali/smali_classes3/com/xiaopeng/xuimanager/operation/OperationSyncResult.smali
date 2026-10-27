.class public Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;
.super Ljava/lang/Object;
.source "OperationSyncResult.java"


# static fields
.field public static final FAIL_REASON_DOWNLOAD:I = 0x2

.field public static final FAIL_REASON_QUERY_REMOTE:I = 0x1


# instance fields
.field private aborted:Z

.field public addCount:I

.field public deleteCount:I

.field public failReason:I

.field public infoUpdateCount:I

.field private success:Z

.field public updateCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->addCount:I

    .line 8
    iput v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->deleteCount:I

    .line 9
    iput v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->updateCount:I

    .line 10
    iput v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->infoUpdateCount:I

    .line 12
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->aborted:Z

    .line 13
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->success:Z

    return-void
.end method


# virtual methods
.method public getFailReason()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->failReason:I

    return v0
.end method

.method public isAborted()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->aborted:Z

    return v0
.end method

.method public isChanged()Z
    .locals 2

    .line 37
    iget v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->addCount:I

    iget v1, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->updateCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->deleteCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->infoUpdateCount:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->aborted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->success:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAborted(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->aborted:Z

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->success:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperationSyncResult{addCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->addCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deleteCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->deleteCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->updateCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", infoUpdateCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->infoUpdateCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aborted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->aborted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->failReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
