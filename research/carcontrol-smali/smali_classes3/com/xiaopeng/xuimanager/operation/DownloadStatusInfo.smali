.class public Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;
.super Ljava/lang/Object;
.source "DownloadStatusInfo.java"


# static fields
.field public static final STATE_CANCELLED:I = 0x47e

.field public static final STATE_COMPLETE:I = 0x44c

.field public static final STATE_ERROR:I = 0x3e8

.field public static final STATE_LOADING:I = 0x1

.field public static final STATE_PAUSED:I = 0xc8

.field public static final STATE_PENDING:I = 0x2

.field public static final STATE_RUNNING:I = 0x64

.field public static final STATE_RUNNING_DOWNLOAD:I = 0x65

.field public static final STATE_RUNNING_INSTALLING:I = 0x66

.field public static final STATE_UNKNOWN:I


# instance fields
.field private downloadUrl:Ljava/lang/String;

.field private extraInfo:Ljava/lang/String;

.field private mProgress:F

.field private mResourceId:Ljava/lang/String;

.field private mResourceName:Ljava/lang/String;

.field private mResourceType:I

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->mState:I

    return-void
.end method


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->extraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 51
    iget v0, p0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->mProgress:F

    return v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->mResourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->mResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceType()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->mResourceType:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->mState:I

    return v0
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->extraInfo:Ljava/lang/String;

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->mProgress:F

    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->mResourceId:Ljava/lang/String;

    return-void
.end method

.method public setResourceName(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->mResourceName:Ljava/lang/String;

    return-void
.end method

.method public setResourceType(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->mResourceType:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->mState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadStatusInfo{mResourceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->mResourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mResourceType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->mResourceType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mResourceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->mResourceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mProgress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->mProgress:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", extraInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->extraInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", downloadUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
