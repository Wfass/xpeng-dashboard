.class public Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;
.super Ljava/lang/Object;
.source "DriveSubItem.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem$FUNCTION;
    }
.end annotation


# instance fields
.field private mAsHeight:I

.field private mAsSoft:I

.field private mAwdSettings:I

.field private mCreepSpeed:I

.field private mEnergyRecovery:I

.field private mEnergyRecoveryPlus:I

.field private mEps:I

.field private mEsp:I

.field private mEspBpf:I

.field private mEspMudMode:Z

.field private mEspPlus:I

.field private mPowerResponse:I

.field private mPowerResponsePlus:I

.field private splitTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allFunctionValues"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_"

    .line 27
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->splitTag:Ljava/lang/String;

    .line 127
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setDriveSubItem(Ljava/lang/String;)V

    return-void
.end method

.method private getmAsHeight()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mAsHeight:I

    return v0
.end method

.method private getmAsSoft()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mAsSoft:I

    return v0
.end method

.method private getmAwdSettings()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mAwdSettings:I

    return v0
.end method

.method private getmCreepSpeed()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mCreepSpeed:I

    return v0
.end method

.method private getmEnergyRecovery()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mEnergyRecovery:I

    return v0
.end method

.method private getmEnergyRecoveryPlus()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mEnergyRecoveryPlus:I

    return v0
.end method

.method private getmEps()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mEps:I

    return v0
.end method

.method private getmEsp()I
    .locals 1

    .line 236
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mEsp:I

    return v0
.end method

.method private getmEspBpf()I
    .locals 1

    .line 260
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mEspBpf:I

    return v0
.end method

.method private getmEspPlus()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mEspPlus:I

    return v0
.end method

.method private getmPowerResponse()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mPowerResponse:I

    return v0
.end method

.method private ismEspMudMode()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mEspMudMode:Z

    return v0
.end method

.method private setmAsHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mAsHeight"
        }
    .end annotation

    .line 184
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mAsHeight:I

    return-void
.end method

.method private setmAsSoft(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mAsSoft"
        }
    .end annotation

    .line 192
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mAsSoft:I

    return-void
.end method

.method private setmAwdSettings(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mAwdSettings"
        }
    .end annotation

    .line 256
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mAwdSettings:I

    return-void
.end method

.method private setmCreepSpeed(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mCreepSpeed"
        }
    .end annotation

    .line 280
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mCreepSpeed:I

    return-void
.end method

.method private setmEnergyRecovery(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mEnergyRecovery"
        }
    .end annotation

    .line 216
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mEnergyRecovery:I

    return-void
.end method

.method private setmEnergyRecoveryPlus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mEnergyRecoveryPlus"
        }
    .end annotation

    .line 224
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mEnergyRecoveryPlus:I

    return-void
.end method

.method private setmEps(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mEps"
        }
    .end annotation

    .line 232
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mEps:I

    return-void
.end method

.method private setmEsp(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mEsp"
        }
    .end annotation

    .line 240
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mEsp:I

    return-void
.end method

.method private setmEspBpf(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mEspBpf"
        }
    .end annotation

    .line 264
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mEspBpf:I

    return-void
.end method

.method private setmEspMudMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mEspMudMode"
        }
    .end annotation

    .line 248
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mEspMudMode:Z

    return-void
.end method

.method private setmEspPlus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mEspPlus"
        }
    .end annotation

    .line 272
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mEspPlus:I

    return-void
.end method

.method private setmPowerResponse(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mPowerResponse"
        }
    .end annotation

    .line 200
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mPowerResponse:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 45
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;

    return-object v0
.end method

.method public getDriveSubItemString()Ljava/lang/String;
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AS_HEIGHT"

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->splitTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AS_SOFT"

    .line 149
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->splitTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "POWER_RESPONSE"

    .line 150
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->splitTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "POWER_RESPONSE_PLUS"

    .line 151
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->splitTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ENERGY_RECOVERY"

    .line 152
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->splitTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ENERGY_RECOVERY_PLUS"

    .line 153
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->splitTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EPS"

    .line 154
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->splitTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ESP"

    .line 155
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->splitTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ESP_MUD_MODE"

    .line 156
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->splitTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AWD_SETTINGS"

    .line 157
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->splitTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ESP_BPF"

    .line 158
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->splitTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ESP_PLUS"

    .line 159
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->splitTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CREEP_SPEED"

    .line 160
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDriveSubItemStringForDebug()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AS_HEIGHT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AS_HEIGHT"

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AS_SOFT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AS_SOFT"

    .line 165
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", POWER_RESPONSE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "POWER_RESPONSE"

    .line 166
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", POWER_RESPONSE_PLUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "POWER_RESPONSE_PLUS"

    .line 167
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ENERGY_RECOVERY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ENERGY_RECOVERY"

    .line 168
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ENERGY_RECOVERY_PLUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ENERGY_RECOVERY_PLUS"

    .line 169
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", EPS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EPS"

    .line 170
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ESP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ESP"

    .line 171
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ESP_MUD_MODE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ESP_MUD_MODE"

    .line 172
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AWD_SETTINGS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AWD_SETTINGS"

    .line 173
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ESP_BPF: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ESP_BPF"

    .line 174
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ESP_PLUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ESP_PLUS"

    .line 175
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CREEP_SPEED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CREEP_SPEED"

    .line 176
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionValue(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "function"
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "AS_HEIGHT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "CREEP_SPEED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "POWER_RESPONSE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "ENERGY_RECOVERY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "AS_SOFT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "ESP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_6
    const-string v0, "EPS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string v0, "ESP_MUD_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_8
    const-string v0, "AWD_SETTINGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_9
    const-string v0, "POWER_RESPONSE_PLUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_a
    const-string v0, "ESP_BPF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_b
    const-string v0, "ENERGY_RECOVERY_PLUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_c
    const-string v0, "ESP_PLUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    return v1

    .line 96
    :pswitch_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getmAsHeight()I

    move-result p1

    return p1

    .line 120
    :pswitch_1
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getmCreepSpeed()I

    move-result p1

    return p1

    .line 100
    :pswitch_2
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getmPowerResponse()I

    move-result p1

    return p1

    .line 104
    :pswitch_3
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getmEnergyRecovery()I

    move-result p1

    return p1

    .line 98
    :pswitch_4
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getmAsSoft()I

    move-result p1

    return p1

    .line 110
    :pswitch_5
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getmEsp()I

    move-result p1

    return p1

    .line 108
    :pswitch_6
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getmEps()I

    move-result p1

    return p1

    .line 112
    :pswitch_7
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->ismEspMudMode()Z

    move-result p1

    return p1

    .line 114
    :pswitch_8
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getmAwdSettings()I

    move-result p1

    return p1

    .line 102
    :pswitch_9
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getmPowerResponsePlus()I

    move-result p1

    return p1

    .line 116
    :pswitch_a
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getmEspBpf()I

    move-result p1

    return p1

    .line 106
    :pswitch_b
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getmEnergyRecoveryPlus()I

    move-result p1

    return p1

    .line 118
    :pswitch_c
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getmEspPlus()I

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x4bc5c1a9 -> :sswitch_c
        -0x46a6d173 -> :sswitch_b
        -0x2bbc42a5 -> :sswitch_a
        -0x22aad702 -> :sswitch_9
        -0x51c598c -> :sswitch_8
        -0x20b4d5d -> :sswitch_7
        0x10d08 -> :sswitch_6
        0x10d62 -> :sswitch_5
        0x178ec17 -> :sswitch_4
        0x74e536c -> :sswitch_3
        0x4e09d65b -> :sswitch_2
        0x5c49f749 -> :sswitch_1
        0x739d3dd4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getmPowerResponsePlus()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mPowerResponsePlus:I

    return v0
.end method

.method public setDriveSubItem(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allFunctionValues"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->splitTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 132
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "AS_HEIGHT"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    const/4 v0, 0x1

    .line 133
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "AS_SOFT"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    const/4 v0, 0x2

    .line 134
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "POWER_RESPONSE"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    const/4 v0, 0x3

    .line 135
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "POWER_RESPONSE_PLUS"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    const/4 v0, 0x4

    .line 136
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ENERGY_RECOVERY"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    const/4 v0, 0x5

    .line 137
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ENERGY_RECOVERY_PLUS"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    const/4 v0, 0x6

    .line 138
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "EPS"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    const/4 v0, 0x7

    .line 139
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ESP"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    const/16 v0, 0x8

    .line 140
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ESP_MUD_MODE"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    const/16 v0, 0x9

    .line 141
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "AWD_SETTINGS"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    const/16 v0, 0xa

    .line 142
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ESP_BPF"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    const/16 v0, 0xb

    .line 143
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ESP_PLUS"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    const/16 v0, 0xc

    .line 144
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "CREEP_SPEED"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    return-void
.end method

.method public setFunctionValue(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "function",
            "value"
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "AS_HEIGHT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "CREEP_SPEED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "POWER_RESPONSE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "ENERGY_RECOVERY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "AS_SOFT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "ESP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_6
    const-string v0, "EPS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    const-string v0, "ESP_MUD_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_8
    const-string v0, "AWD_SETTINGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_9
    const-string v0, "POWER_RESPONSE_PLUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_a
    const-string v0, "ESP_BPF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_b
    const-string v0, "ENERGY_RECOVERY_PLUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    move v3, v2

    goto :goto_0

    :sswitch_c
    const-string v0, "ESP_PLUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 52
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setmAsHeight(I)V

    goto :goto_1

    .line 88
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setmCreepSpeed(I)V

    goto :goto_1

    .line 58
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setmPowerResponse(I)V

    goto :goto_1

    .line 64
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setmEnergyRecovery(I)V

    goto :goto_1

    .line 55
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setmAsSoft(I)V

    goto :goto_1

    .line 73
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setmEsp(I)V

    goto :goto_1

    .line 70
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setmEps(I)V

    goto :goto_1

    :pswitch_7
    if-ne p2, v2, :cond_d

    move v1, v2

    .line 76
    :cond_d
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setmEspMudMode(Z)V

    goto :goto_1

    .line 79
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setmAwdSettings(I)V

    goto :goto_1

    .line 61
    :pswitch_9
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setmPowerResponsePlus(I)V

    goto :goto_1

    .line 82
    :pswitch_a
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setmEspBpf(I)V

    goto :goto_1

    .line 67
    :pswitch_b
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setmEnergyRecoveryPlus(I)V

    goto :goto_1

    .line 85
    :pswitch_c
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setmEspPlus(I)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bc5c1a9 -> :sswitch_c
        -0x46a6d173 -> :sswitch_b
        -0x2bbc42a5 -> :sswitch_a
        -0x22aad702 -> :sswitch_9
        -0x51c598c -> :sswitch_8
        -0x20b4d5d -> :sswitch_7
        0x10d08 -> :sswitch_6
        0x10d62 -> :sswitch_5
        0x178ec17 -> :sswitch_4
        0x74e536c -> :sswitch_3
        0x4e09d65b -> :sswitch_2
        0x5c49f749 -> :sswitch_1
        0x739d3dd4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setmPowerResponsePlus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mPowerResponsePlus"
        }
    .end annotation

    .line 208
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->mPowerResponsePlus:I

    return-void
.end method
