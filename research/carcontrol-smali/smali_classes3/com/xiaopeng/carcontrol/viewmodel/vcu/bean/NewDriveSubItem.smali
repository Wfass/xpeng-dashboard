.class public Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;
.super Ljava/lang/Object;
.source "NewDriveSubItem.java"


# instance fields
.field private final SAVED_SUB_ITEM_INTERVAL:Ljava/lang/String;

.field private mAsHeight:I

.field private mAsSoft:I

.field private mEnergyRecovery:I

.field private mEpsMode:I

.field private mEspMode:I

.field private mEspMudMode:Z

.field private mMotorPower:I

.field private mPowerResponse:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_"

    .line 18
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->SAVED_SUB_ITEM_INTERVAL:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 23
    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 24
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mAsHeight:I

    const/4 v1, 0x1

    .line 25
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mAsSoft:I

    const/4 v2, 0x2

    .line 26
    aget-object v2, p1, v2

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mPowerResponse:I

    const/4 v2, 0x3

    .line 27
    aget-object v2, p1, v2

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mEnergyRecovery:I

    const/4 v2, 0x4

    .line 28
    aget-object v2, p1, v2

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mEpsMode:I

    const/4 v2, 0x5

    .line 29
    aget-object v2, p1, v2

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mEspMode:I

    const/4 v2, 0x6

    .line 30
    aget-object v2, p1, v2

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mEspMudMode:Z

    const/4 v0, 0x7

    .line 31
    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mMotorPower:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getAsHeight()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mAsHeight:I

    return v0
.end method

.method public getAsSoft()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mAsSoft:I

    return v0
.end method

.method public getEnergyRecovery()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mEnergyRecovery:I

    return v0
.end method

.method public getEpsMode()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mEpsMode:I

    return v0
.end method

.method public getEspMode()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mEspMode:I

    return v0
.end method

.method public getMotorPower()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mMotorPower:I

    return v0
.end method

.method public getPowerResponse()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mPowerResponse:I

    return v0
.end method

.method public isEspMudMode()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mEspMudMode:Z

    return v0
.end method

.method public setAsHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asHeight"
        }
    .end annotation

    .line 41
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mAsHeight:I

    return-void
.end method

.method public setAsSoft(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asSoft"
        }
    .end annotation

    .line 49
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mAsSoft:I

    return-void
.end method

.method public setEnergyRecovery(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "energyRecovery"
        }
    .end annotation

    .line 65
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mEnergyRecovery:I

    return-void
.end method

.method public setEpsMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "epsMode"
        }
    .end annotation

    .line 73
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mEpsMode:I

    return-void
.end method

.method public setEspMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "espMode"
        }
    .end annotation

    .line 81
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mEspMode:I

    return-void
.end method

.method public setEspMudMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "espMudMode"
        }
    .end annotation

    .line 89
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mEspMudMode:Z

    return-void
.end method

.method public setMotorPower(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motorPower"
        }
    .end annotation

    .line 97
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mMotorPower:I

    return-void
.end method

.method public setPowerResponse(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "powerResponse"
        }
    .end annotation

    .line 57
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mPowerResponse:I

    return-void
.end method

.method public toSavedStr()Ljava/lang/String;
    .locals 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mAsHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mAsSoft:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mPowerResponse:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mEnergyRecovery:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mEpsMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mEspMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mEspMudMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mMotorPower:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAsHeight="

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mAsHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAsSoft="

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mAsSoft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPowerResponse="

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mPowerResponse:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEnergyRecovery="

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mEnergyRecovery:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEpsMode="

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mEpsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEspMode="

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mEspMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEspMudMode="

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mEspMudMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMotorPower="

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/NewDriveSubItem;->mMotorPower:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
