.class public Lcom/xiaopeng/devtools/model/c/a/i/a;
.super Ljava/lang/Object;
.source "TemperatureModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public gO()I
    .locals 1

    .line 18
    const-string v0, "CPU_INTERNAL_THERM"

    invoke-static {v0}, Lcom/xiaopeng/a/a$c;->ee(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->cw(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public gP()I
    .locals 1

    .line 22
    const-string v0, "SOC_THERM"

    invoke-static {v0}, Lcom/xiaopeng/a/a$c;->ee(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->cw(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public gQ()I
    .locals 1

    .line 26
    const-string v0, "UFS_THERM"

    invoke-static {v0}, Lcom/xiaopeng/a/a$c;->ee(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->cw(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public gR()I
    .locals 1

    .line 30
    const-string v0, "DDR_THERM"

    invoke-static {v0}, Lcom/xiaopeng/a/a$c;->ee(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->cw(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public gS()I
    .locals 1

    .line 34
    const-string v0, "AMP_THERM"

    invoke-static {v0}, Lcom/xiaopeng/a/a$c;->ee(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->cw(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public gT()I
    .locals 1

    .line 38
    const-string v0, "PMIC_THERM"

    invoke-static {v0}, Lcom/xiaopeng/a/a$c;->ee(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->cw(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
