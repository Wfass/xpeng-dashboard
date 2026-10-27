.class public Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;
.super Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;
.source "CarAtlManagerAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent$InstanceHolder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "CarAtlManagerAgent"


# instance fields
.field private isIgOn:Z

.field private lastAtlLogTime:J

.field private mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->isIgOn:Z

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->lastAtlLogTime:J

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent$1;

    .line 14
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;
    .locals 1

    .line 26
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent$InstanceHolder;->access$000()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    move-result-object v0

    return-object v0
.end method

.method private printAtlLog(Ljava/lang/String;II)V
    .locals 6
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "pamram1"    # I
    .param p3, "pamram2"    # I

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 153
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->lastAtlLogTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->xuiLogInterval:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 154
    const-string v2, "CarAtlManagerAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "printAtlLog isIgOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->isIgOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " func:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->lastAtlLogTime:J

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCarManagerInited()V
    .locals 2

    .line 31
    const-string v0, "CarAtlManagerAgent"

    const-string v1, "onCarManagerInited()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string/jumbo v0, "xp_atl"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/atl/CarAtlManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    .line 33
    return-void
.end method

.method protected onInit()V
    .locals 0

    .line 37
    return-void
.end method

.method protected onRelease()V
    .locals 0

    .line 41
    return-void
.end method

.method public setAllLightData(Z[B[B[B)V
    .locals 2
    .param p1, "hold"    # Z
    .param p2, "color"    # [B
    .param p3, "bright"    # [B
    .param p4, "fade"    # [B

    .line 131
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->isIgOn:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/car/hardware/atl/CarAtlManager;->setAllLightData(Z[B[B[B)V

    goto :goto_0

    .line 134
    :cond_0
    const-string v0, "setAllLightData"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->printAtlLog(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    goto :goto_1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->handleException(Ljava/lang/Exception;)V

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setAtlConfiguration(Landroid/car/hardware/atl/AtlConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/car/hardware/atl/AtlConfiguration;

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/atl/CarAtlManager;->setAtlConfiguration(Landroid/car/hardware/atl/AtlConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->handleException(Ljava/lang/Exception;)V

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setAtlOpen(I)V
    .locals 1
    .param p1, "status"    # I

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/atl/CarAtlManager;->setAtlOpen(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->handleException(Ljava/lang/Exception;)V

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setDoubleThemeColor(I)V
    .locals 1
    .param p1, "status"    # I

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/atl/CarAtlManager;->setDoubleThemeColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->handleException(Ljava/lang/Exception;)V

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setGroutLightData(BBIZBBB)V
    .locals 12
    .param p1, "groupNum"    # B
    .param p2, "solution"    # B
    .param p3, "lightlist"    # I
    .param p4, "hold"    # Z
    .param p5, "color"    # B
    .param p6, "bright"    # B
    .param p7, "fade"    # B

    move-object v1, p0

    move/from16 v10, p6

    .line 112
    :try_start_0
    iget-boolean v0, v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->isIgOn:Z

    if-nez v0, :cond_1

    if-nez v10, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    const-string v0, "setGroutLightData"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v11, p1

    :try_start_1
    invoke-direct {v1, v0, v11, v10}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->printAtlLog(Ljava/lang/String;II)V

    goto :goto_1

    .line 113
    :cond_1
    :goto_0
    move v11, p1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    move v3, v11

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, v10

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Landroid/car/hardware/atl/CarAtlManager;->setGroutLightData(BBIZBBB)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    :goto_1
    goto :goto_3

    .line 116
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move v11, p1

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->handleException(Ljava/lang/Exception;)V

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public setIgOnStatus(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 145
    const-string v0, "CarAtlManagerAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIgOnStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->isIgOn:Z

    .line 147
    return-void
.end method

.method public setThemeFirstColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/atl/CarAtlManager;->setThemeFirstColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->handleException(Ljava/lang/Exception;)V

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setThemeSecondColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/atl/CarAtlManager;->setThemeSecondColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->handleException(Ljava/lang/Exception;)V

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setTwoLightData(B[BZ[B[B[B)V
    .locals 8
    .param p1, "protocol"    # B
    .param p2, "lightPosition"    # [B
    .param p3, "hold"    # Z
    .param p4, "color"    # [B
    .param p5, "bright"    # [B
    .param p6, "fade"    # [B

    .line 92
    const-string v0, "CarAtlManagerAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTwoLightData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-byte v3, p2, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p4, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p5, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p6, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isIgOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->isIgOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->isIgOn:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/car/hardware/atl/CarAtlManager;->setTwoLightData(B[BZ[B[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->handleException(Ljava/lang/Exception;)V

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
