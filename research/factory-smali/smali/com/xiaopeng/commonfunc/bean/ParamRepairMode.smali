.class public Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;
.super Ljava/lang/Object;
.source "ParamRepairMode.java"


# instance fields
.field private mEntry:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "entry"
    .end annotation
.end field

.field private mExit:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "exit"
    .end annotation
.end field

.field private mStatus:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mStatus"    # Z
    .param p2, "mEntry"    # Ljava/lang/String;
    .param p3, "mExit"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;->mStatus:Z

    .line 15
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;->mEntry:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;->mExit:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getEntry()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;->mEntry:Ljava/lang/String;

    return-object v0
.end method

.method public getExit()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;->mExit:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;->mStatus:Z

    return v0
.end method

.method public setEntry(Ljava/lang/String;)V
    .locals 0
    .param p1, "mEntry"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;->mEntry:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setExit(Ljava/lang/String;)V
    .locals 0
    .param p1, "mExit"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;->mExit:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setStatus(Z)V
    .locals 0
    .param p1, "mStatus"    # Z

    .line 24
    iput-boolean p1, p0, Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;->mStatus:Z

    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParamRepairMode{mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;->mStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEntry=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;->mEntry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mExit=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/ParamRepairMode;->mExit:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
