.class public Lcom/xiaopeng/carcontrol/bean/HabitBean;
.super Ljava/lang/Object;
.source "HabitBean.java"


# instance fields
.field private mGroupId:Ljava/lang/String;

.field private mGroupName:Ljava/lang/String;

.field private mIsDefault:Z

.field private mIsSelect:Z

.field private mStatus:I

.field private mUpdateTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mGroupName",
            "mGroupId",
            "mUpdateTimestamp"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mGroupName:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mGroupId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mIsSelect:Z

    .line 7
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mIsDefault:Z

    .line 8
    iput v0, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mStatus:I

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mUpdateTimestamp:J

    .line 12
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mGroupName:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mGroupId:Ljava/lang/String;

    .line 14
    iput-wide p3, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mUpdateTimestamp:J

    return-void
.end method


# virtual methods
.method public getmGroupId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getmGroupName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getmStatus()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mStatus:I

    return v0
.end method

.method public getmUpdateTimestamp()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mUpdateTimestamp:J

    return-wide v0
.end method

.method public ismIsDefault()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mIsDefault:Z

    return v0
.end method

.method public ismIsSelect()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mIsSelect:Z

    return v0
.end method

.method public setmGroupId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mGroupId"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method public setmGroupName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mGroupName"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mGroupName:Ljava/lang/String;

    return-void
.end method

.method public setmIsDefault(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mIsDefault"
        }
    .end annotation

    .line 46
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mIsDefault:Z

    return-void
.end method

.method public setmIsSelect(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mIsSelect"
        }
    .end annotation

    .line 38
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mIsSelect:Z

    return-void
.end method

.method public setmStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mStatus"
        }
    .end annotation

    .line 54
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mStatus:I

    return-void
.end method

.method public setmUpdateTimestamp(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mUpdateTimestamp"
        }
    .end annotation

    .line 62
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mUpdateTimestamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HabitBean{mGroupName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mGroupId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsSelect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mIsSelect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mIsDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUpdateTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/carcontrol/bean/HabitBean;->mUpdateTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
