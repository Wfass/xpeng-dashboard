.class public Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;
.super Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;
.source "AmbientManagerOld.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AmbientManagerOld"


# instance fields
.field callback:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;

.field mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/XUIManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "xuiManager"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;-><init>()V

    .line 220
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld$1;-><init>(Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->callback:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;

    :try_start_0
    const-string v0, "ambientlight"

    .line 22
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->callback:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->registerListener(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$AmbientLightEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "AmbientManagerOld"

    .line 25
    invoke-static {v2, v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_0
    return-void
.end method

.method public static newInstance(Lcom/xiaopeng/xuimanager/XUIManager;)Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "xuiManager"
        }
    .end annotation

    const-string v0, "AmbientManagerOld"

    const-string v1, "newInstance"

    .line 30
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;-><init>(Lcom/xiaopeng/xuimanager/XUIManager;)V

    .line 32
    iget-object p0, v0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getAmbientLightBright(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "partition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->getAmbientLightBright()I

    move-result v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmbientLightBright:partition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",result:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AmbientManagerOld"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getAmbientLightColorType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "partition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->getDoubleThemeColorEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->Double:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->Mono:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

    :goto_0
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->name()Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmbientLightColorType:partition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",result:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "AmbientManagerOld"

    invoke-static {v2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getAmbientLightDoubleColor(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "partition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;",
            "Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->getAmbientLightDoubleFirstColor(Ljava/lang/String;)I

    move-result v1

    .line 173
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->getAmbientLightDoubleSecondColor(Ljava/lang/String;)I

    move-result v0

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAmbientLightDoubleColor:partition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ",firstColor:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ",secondColor:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AmbientManagerOld"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 175
    new-instance p1, Landroid/util/Pair;

    new-instance v2, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;-><init>(ZLjava/lang/String;)V

    new-instance v1, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;-><init>(ZLjava/lang/String;)V

    invoke-direct {p1, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public getAmbientLightEnable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->getAmbientLightOpen()Z

    move-result v0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmbientLightEnable:result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AmbientManagerOld"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getAmbientLightMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "partition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmbientLightMode:partition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",result:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AmbientManagerOld"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getAmbientLightMonoColor(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "partition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->getAmbientLightMonoColor(Ljava/lang/String;)I

    move-result v0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmbientLightMonoColor:partition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",color:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AmbientManagerOld"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;-><init>(ZLjava/lang/String;)V

    return-object p1
.end method

.method public getAmbientLightPartitionModes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAmbientLightRegionBright(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "region"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 205
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAmbientLightRegionColor(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "region"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 195
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAmbientLightThemeColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "partition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 185
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not support"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isSupportDoubleThemeColor(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->isSupportDoubleThemeColor(Ljava/lang/String;)Z

    move-result v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportDoubleThemeColor:mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",result:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AmbientManagerOld"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public isSupportNewService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public playAmbientLightEffect(Ljava/lang/String;Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEffect;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "effect"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 71
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public playAmbientLightEffect(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "effect"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 66
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAmbientLightBright(Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "bright"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAmbientLightBright:partition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",bright:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AmbientManagerOld"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->setAmbientLightBright(I)V

    return v1
.end method

.method public setAmbientLightColorType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "colorType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAmbientLightColorType:partition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",colorType:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AmbientManagerOld"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object p1

    .line 126
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->Mono:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {p2, p1, v1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->setDoubleThemeColorEnable(Ljava/lang/String;Z)V

    goto :goto_0

    .line 128
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->Double:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColorType;->match(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 129
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->setDoubleThemeColorEnable(Ljava/lang/String;Z)V

    :goto_0
    return v1

    .line 131
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAmbientLightDoubleColor(Ljava/lang/String;Landroid/util/Pair;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;",
            "Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAmbientLightDoubleColor:partition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",color:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AmbientManagerOld"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 164
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object p1

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    iget v2, v2, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;->predef:I

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    iget p2, p2, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;->predef:I

    invoke-virtual {v0, p1, v2, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->setAmbientLightDoubleColor(Ljava/lang/String;II)V

    return v1
.end method

.method public setAmbientLightEnable(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAmbientLightEnable:enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmbientManagerOld"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->setAmbientLightOpen(Z)V

    return v2
.end method

.method public setAmbientLightMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "mode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAmbientLightMode:partition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",mode:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AmbientManagerOld"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->setAmbientLightEffectType(Ljava/lang/String;)V

    return v1
.end method

.method public setAmbientLightMonoColor(Ljava/lang/String;Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAmbientLightMonoColor:partition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",color:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AmbientManagerOld"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 148
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object p1

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->mManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    iget p2, p2, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;->predef:I

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->setAmbientLightMonoColor(Ljava/lang/String;I)V

    return v1
.end method

.method public setAmbientLightRegionBright(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "partition",
            "region",
            "bright"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 200
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAmbientLightRegionColor(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "partition",
            "region",
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 190
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAmbientLightThemeColor(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "themeColor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 180
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showAmbientLightColorTypes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showAmbientLightEffectPartitions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showAmbientLightEffects()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showAmbientLightModes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopAmbientLightEffect()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subAmbientLightMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partition",
            "mode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 88
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
