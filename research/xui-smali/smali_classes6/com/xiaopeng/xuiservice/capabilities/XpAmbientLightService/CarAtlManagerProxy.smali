.class public Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;
.super Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;
.source "CarAtlManagerProxy.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy$InstanceHolder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "CarAtlManagerProxy"


# instance fields
.field private mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;
    .locals 1

    .line 26
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy$InstanceHolder;->access$000()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCarAtlManager()Landroid/car/hardware/atl/CarAtlManager;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    if-nez v0, :cond_0

    .line 164
    const-string v0, "CarAtlManagerProxy"

    const-string v1, "mCarAtlManager is null."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_atl"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/atl/CarAtlManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;->handleException(Ljava/lang/Exception;)V

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;->mCarAtlManager:Landroid/car/hardware/atl/CarAtlManager;

    return-object v0
.end method

.method protected onCarManagerInited()V
    .locals 2

    .line 31
    const-string v0, "CarAtlManagerProxy"

    const-string v1, "onCarManagerInited()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method protected onInit()V
    .locals 0

    .line 36
    return-void
.end method

.method protected onRelease()V
    .locals 0

    .line 40
    return-void
.end method

.method public setAllLightData([B[B[B)V
    .locals 2
    .param p1, "color"    # [B
    .param p2, "bright"    # [B
    .param p3, "fade"    # [B

    .line 150
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;->getCarAtlManager()Landroid/car/hardware/atl/CarAtlManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/car/hardware/atl/CarAtlManager;->setAllLightData(Z[B[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;->handleException(Ljava/lang/Exception;)V

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setAtlConfiguration(Landroid/car/hardware/atl/AtlConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/car/hardware/atl/AtlConfiguration;

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;->getCarAtlManager()Landroid/car/hardware/atl/CarAtlManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/atl/CarAtlManager;->setAtlConfiguration(Landroid/car/hardware/atl/AtlConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;->handleException(Ljava/lang/Exception;)V

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setAtlOpen(I)V
    .locals 3
    .param p1, "status"    # I

    .line 89
    const-string v0, "CarAtlManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setAtlOpen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;->getCarAtlManager()Landroid/car/hardware/atl/CarAtlManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/atl/CarAtlManager;->setAtlOpen(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;->handleException(Ljava/lang/Exception;)V

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setBrightnessLevel(I)V
    .locals 3
    .param p1, "bright"    # I

    .line 78
    const-string v0, "CarAtlManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setBrightnessLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;->getCarAtlManager()Landroid/car/hardware/atl/CarAtlManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/atl/CarAtlManager;->setBrightnessLevel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;->handleException(Ljava/lang/Exception;)V

    .line 84
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setDoubleThemeColor(I)V
    .locals 3
    .param p1, "status"    # I

    .line 67
    const-string v0, "CarAtlManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setDoubleThemeColor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;->getCarAtlManager()Landroid/car/hardware/atl/CarAtlManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/atl/CarAtlManager;->setDoubleThemeColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;->handleException(Ljava/lang/Exception;)V

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setGroutLightData(BBIZBBB)V
    .locals 8
    .param p1, "groupNum"    # B
    .param p2, "solution"    # B
    .param p3, "lightlist"    # I
    .param p4, "hold"    # Z
    .param p5, "color"    # B
    .param p6, "bright"    # B
    .param p7, "fade"    # B

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;->getCarAtlManager()Landroid/car/hardware/atl/CarAtlManager;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/car/hardware/atl/CarAtlManager;->setGroutLightData(BBIZBBB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;->handleException(Ljava/lang/Exception;)V

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setThemeFirstColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 45
    const-string v0, "CarAtlManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setThemeFirstColor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;->getCarAtlManager()Landroid/car/hardware/atl/CarAtlManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/atl/CarAtlManager;->setThemeFirstColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;->handleException(Ljava/lang/Exception;)V

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setThemeSecondColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 56
    const-string v0, "CarAtlManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setThemeSecondColor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;->getCarAtlManager()Landroid/car/hardware/atl/CarAtlManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/atl/CarAtlManager;->setThemeSecondColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;->handleException(Ljava/lang/Exception;)V

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setTwoLightData(B[BZ[B[B[B)V
    .locals 9
    .param p1, "protocol"    # B
    .param p2, "lightPosition"    # [B
    .param p3, "hold"    # Z
    .param p4, "color"    # [B
    .param p5, "bright"    # [B
    .param p6, "fade"    # [B

    .line 115
    const-string v0, "CarAtlManagerProxy"

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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;->getCarAtlManager()Landroid/car/hardware/atl/CarAtlManager;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Landroid/car/hardware/atl/CarAtlManager;->setTwoLightData(B[BZ[B[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerProxy;->handleException(Ljava/lang/Exception;)V

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
