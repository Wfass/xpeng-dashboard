.class public Lcom/xiaopeng/carcontrol/viewmodel/endurance/EnduranceViewModel;
.super Ljava/lang/Object;
.source "EnduranceViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/endurance/IEnduranceViewModel;


# static fields
.field protected static final TAG:Ljava/lang/String; = "EnduranceViewModel"


# instance fields
.field private mDcdcController:Lcom/xiaopeng/carcontrol/carmanager/controller/IDcdcController;

.field private mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_vcu"

    .line 22
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/endurance/EnduranceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    const-string/jumbo v1, "xp_dcdc"

    .line 24
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IDcdcController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/endurance/EnduranceViewModel;->mDcdcController:Lcom/xiaopeng/carcontrol/carmanager/controller/IDcdcController;

    return-void
.end method

.method private calculateLeftTimeInHour(J)F
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrivalTime"
        }
    .end annotation

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const-string v4, "EnduranceViewModel"

    if-gez v2, :cond_0

    const-string p1, "Arrival time is earlier than current time, not acceptable"

    .line 85
    invoke-static {v4, p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const-wide/32 v5, 0x493e0

    cmp-long v2, v0, v5

    if-gez v2, :cond_1

    const-string v0, "Arrival time is less than 5 minute"

    .line 89
    invoke-static {v4, v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    move-wide v0, v5

    :cond_1
    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x45610000    # 3600.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 92
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateLeftTimeInHour arrivalTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", leftTimeInHour: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method private getCurrentEndurance()I
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/endurance/EnduranceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getAvailableMileage(Z)I

    move-result v0

    return v0
.end method

.method private getDcdcConsumption()F
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/endurance/EnduranceViewModel;->mDcdcController:Lcom/xiaopeng/carcontrol/carmanager/controller/IDcdcController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IDcdcController;->getDcdcInputVoltage()I

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/endurance/EnduranceViewModel;->mDcdcController:Lcom/xiaopeng/carcontrol/carmanager/controller/IDcdcController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IDcdcController;->getDcdcInputCurrent()F

    move-result v1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dcdc module vol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cur: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnduranceViewModel"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 62
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    return v0
.end method

.method private getPowerConsumption()F
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/endurance/EnduranceViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getConsumptionPer100Km()F

    move-result v0

    return v0
.end method


# virtual methods
.method public getEstimateEndurance(J)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrivalTime"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/endurance/EnduranceViewModel;->getDcdcConsumption()F

    move-result v0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/endurance/EnduranceViewModel;->calculateLeftTimeInHour(J)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p2, p1, p2

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    goto :goto_0

    :cond_0
    add-float/2addr v1, v0

    mul-float/2addr v1, p1

    .line 46
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/endurance/EnduranceViewModel;->getCurrentEndurance()I

    move-result p2

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/endurance/EnduranceViewModel;->getPowerConsumption()F

    move-result v0

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentEndurance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", consumptionPer100Km "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnduranceViewModel"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    int-to-float p2, p2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v0

    sub-float/2addr p2, v1

    .line 50
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Estimate available distance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", continued for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " hours"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return p2
.end method
