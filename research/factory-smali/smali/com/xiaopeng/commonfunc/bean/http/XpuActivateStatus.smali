.class public Lcom/xiaopeng/commonfunc/bean/http/XpuActivateStatus;
.super Ljava/lang/Object;
.source "XpuActivateStatus.java"


# instance fields
.field private lastReplaceTime:J

.field private newXpuSn:Ljava/lang/String;

.field private state:I

.field private stateCode:I

.field private stateDesc:Ljava/lang/String;

.field private stateMsg:Ljava/lang/String;

.field private xpuSn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, -0x63

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/http/XpuActivateStatus;->state:I

    .line 6
    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/http/XpuActivateStatus;->stateCode:I

    return-void
.end method


# virtual methods
.method public getLastReplaceTime()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/xiaopeng/commonfunc/bean/http/XpuActivateStatus;->lastReplaceTime:J

    return-wide v0
.end method

.method public getNewXpuSn()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/http/XpuActivateStatus;->newXpuSn:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/http/XpuActivateStatus;->state:I

    return v0
.end method

.method public getStateCode()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/http/XpuActivateStatus;->stateCode:I

    return v0
.end method

.method public getStateDesc()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/http/XpuActivateStatus;->stateDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getStateMsg()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/http/XpuActivateStatus;->stateMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getXpuSn()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/http/XpuActivateStatus;->xpuSn:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XpuActivateStatus{lastReplaceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/commonfunc/bean/http/XpuActivateStatus;->lastReplaceTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", xpuSn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/http/XpuActivateStatus;->xpuSn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", newXpuSn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/http/XpuActivateStatus;->newXpuSn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/http/XpuActivateStatus;->state:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stateMsg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/http/XpuActivateStatus;->stateMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", stateCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/http/XpuActivateStatus;->stateCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stateDesc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/http/XpuActivateStatus;->stateDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
