.class public Lcom/xiaopeng/factory/model/factorytest/hardwaretest/temperature/TemperatureModel;
.super Ljava/lang/Object;
.source "TemperatureModel.java"


# static fields
.field private static final AMP_THERM:Ljava/lang/String; = "/sys/class/thermal/thermal_zone3/temp"

.field private static final CPU_INTERNAL_THERM:Ljava/lang/String; = "/sys/class/thermal/thermal_zone7/temp"

.field private static final DDR_THERM:Ljava/lang/String; = "/sys/class/thermal/thermal_zone2/temp"

.field private static final PMIC_THERM:Ljava/lang/String; = "/sys/class/thermal/thermal_zone4/temp"

.field private static final SOC_THERM:Ljava/lang/String; = "/sys/class/thermal/thermal_zone0/temp"

.field private static final TAG:Ljava/lang/String; = "TemperatureModel"

.field private static final UFS_THERM:Ljava/lang/String; = "/sys/class/thermal/thermal_zone1/temp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public readAmpTemp()I
    .locals 1

    .line 39
    const-string v0, "/sys/class/thermal/thermal_zone3/temp"

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/FileUtil;->readVal(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public readCpuInternalTemp()I
    .locals 1

    .line 23
    const-string v0, "/sys/class/thermal/thermal_zone7/temp"

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/FileUtil;->readVal(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public readDdrTemp()I
    .locals 1

    .line 35
    const-string v0, "/sys/class/thermal/thermal_zone2/temp"

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/FileUtil;->readVal(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public readPmicTemp()I
    .locals 1

    .line 43
    const-string v0, "/sys/class/thermal/thermal_zone4/temp"

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/FileUtil;->readVal(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public readSocTemp()I
    .locals 1

    .line 27
    const-string v0, "/sys/class/thermal/thermal_zone0/temp"

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/FileUtil;->readVal(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public readUfsTemp()I
    .locals 1

    .line 31
    const-string v0, "/sys/class/thermal/thermal_zone1/temp"

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/FileUtil;->readVal(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
