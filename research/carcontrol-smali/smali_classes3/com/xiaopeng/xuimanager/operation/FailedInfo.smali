.class public Lcom/xiaopeng/xuimanager/operation/FailedInfo;
.super Ljava/lang/Object;
.source "FailedInfo.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DISK_NO_SPACE:Ljava/lang/String; = "disk space is not enough"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNZIP_ERROR:Ljava/lang/String; = "file not exist or not a valid zip file"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mFailedReason:Ljava/lang/String;

.field private mResourceId:Ljava/lang/String;

.field private mResourceName:Ljava/lang/String;

.field private mResourceType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFailedReason()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/FailedInfo;->mFailedReason:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/FailedInfo;->mResourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/FailedInfo;->mResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceType()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/xiaopeng/xuimanager/operation/FailedInfo;->mResourceType:I

    return v0
.end method

.method public setFailedReason(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/operation/FailedInfo;->mFailedReason:Ljava/lang/String;

    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/operation/FailedInfo;->mResourceId:Ljava/lang/String;

    return-void
.end method

.method public setResourceName(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/operation/FailedInfo;->mResourceName:Ljava/lang/String;

    return-void
.end method

.method public setResourceType(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/xiaopeng/xuimanager/operation/FailedInfo;->mResourceType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FailedInfo{mResourceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/operation/FailedInfo;->mResourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mResourceType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/xuimanager/operation/FailedInfo;->mResourceType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mResourceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/operation/FailedInfo;->mResourceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mFailedReason=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/operation/FailedInfo;->mFailedReason:Ljava/lang/String;

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
