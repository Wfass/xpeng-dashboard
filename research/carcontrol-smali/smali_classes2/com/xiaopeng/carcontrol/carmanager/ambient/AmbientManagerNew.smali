.class public Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;
.super Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;
.source "AmbientManagerNew.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AmbientManagerNew"


# instance fields
.field callback:Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;

.field mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

.field private supportNewService:Z


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/XUIManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "xuiManager"
        }
    .end annotation

    const-string v0, "AmbientManagerNew"

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;-><init>()V

    .line 241
    new-instance v1, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew$1;-><init>(Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->callback:Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "ambient"

    .line 25
    invoke-virtual {p1, v3}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    .line 26
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->callback:Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->registerListener(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    invoke-static {v0, v2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 32
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->showAmbientLightModes()Ljava/util/Set;

    move-result-object p1

    const-string/jumbo v3, "stable"

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->supportNewService:Z

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "supportNewService"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->supportNewService:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 35
    invoke-static {v0, v2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_1
    return-void
.end method

.method public static newInstance(Lcom/xiaopeng/xuimanager/XUIManager;)Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "xuiManager"
        }
    .end annotation

    const-string v0, "AmbientManagerNew"

    const-string v1, "newInstance"

    .line 40
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;-><init>(Lcom/xiaopeng/xuimanager/XUIManager;)V

    .line 42
    iget-object p0, v0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static transform(Lcom/xiaopeng/xuimanager/ambient/Color;)Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ac"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 384
    :cond_0
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    iget-boolean v1, p0, Lcom/xiaopeng/xuimanager/ambient/Color;->hasRgb:Z

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambient/Color;->toHexString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;-><init>(ZLjava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method static transform(Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;)Lcom/xiaopeng/xuimanager/ambient/Color;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ac"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 380
    :cond_0
    new-instance v0, Lcom/xiaopeng/xuimanager/ambient/Color;

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;->hasRgb:Z

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;->toHexString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/xiaopeng/xuimanager/ambient/Color;-><init>(ZLjava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
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

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->getAmbientLightBright(Ljava/lang/String;)I

    move-result v0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmbientLightBright:partition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v1, "result:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AmbientManagerNew"

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

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->getAmbientLightColorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
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

    const-string v1, "AmbientManagerNew"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getAmbientLightDoubleColor(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
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

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->getAmbientLightDoubleColor(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmbientLightDoubleColor:partition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",color:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AmbientManagerNew"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 184
    :cond_0
    new-instance p1, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuimanager/ambient/Color;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->transform(Lcom/xiaopeng/xuimanager/ambient/Color;)Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuimanager/ambient/Color;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->transform(Lcom/xiaopeng/xuimanager/ambient/Color;)Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object p1
.end method

.method public getAmbientLightEnable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->getAmbientLightEnable()Z

    move-result v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmbientLightEnable:result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AmbientManagerNew"

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

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->getAmbientLightMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
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

    const-string v1, "AmbientManagerNew"

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

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->getAmbientLightMonoColor(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/ambient/Color;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->transform(Lcom/xiaopeng/xuimanager/ambient/Color;)Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmbientLightMonoColor:partition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",result:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AmbientManagerNew"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getAmbientLightPartitionModes()Ljava/util/Map;
    .locals 3
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

    const-string v0, "AmbientManagerNew"

    const-string v1, "getAmbientLightPartitionModes"

    const/4 v2, 0x0

    .line 121
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->getAmbientLightPartitionModes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAmbientLightRegionBright(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
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

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->getAmbientLightRegionBright(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmbientLightRegionBright:partition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",region:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AmbientManagerNew"

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getAmbientLightRegionColor(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;
    .locals 3
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

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->getAmbientLightRegionColor(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xuimanager/ambient/Color;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->transform(Lcom/xiaopeng/xuimanager/ambient/Color;)Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmbientLightRegionColor:partition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",region:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AmbientManagerNew"

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getAmbientLightThemeColor(Ljava/lang/String;)Ljava/lang/String;
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

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->getAmbientLightThemeColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmbientLightThemeColor:partition:"

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

    const-string v1, "AmbientManagerNew"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public isSupportDoubleThemeColor(Ljava/lang/String;)Z
    .locals 4
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

    .line 231
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->None:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->match(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->Breathing:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 232
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportDoubleThemeColor:mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ",result:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AmbientManagerNew"

    invoke-static {v2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public isSupportNewService()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->supportNewService:Z

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

    .line 81
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not support"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public playAmbientLightEffect(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
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

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->playAmbientLightEffect(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAmbientLightEffect:partition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",effect:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p2, "result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AmbientManagerNew"

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public setAmbientLightBright(Ljava/lang/String;I)I
    .locals 3
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

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->setAmbientLightBright(Ljava/lang/String;I)I

    move-result v0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAmbientLightBright:partition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",bright:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AmbientManagerNew"

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public setAmbientLightColorType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
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

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->setAmbientLightColorType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAmbientLightColorType:partition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",colorType:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AmbientManagerNew"

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public setAmbientLightDoubleColor(Ljava/lang/String;Landroid/util/Pair;)I
    .locals 4
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

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->transform(Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;)Lcom/xiaopeng/xuimanager/ambient/Color;

    move-result-object v2

    iget-object v3, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->transform(Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;)Lcom/xiaopeng/xuimanager/ambient/Color;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->setAmbientLightDoubleColor(Ljava/lang/String;Landroid/util/Pair;)I

    move-result v0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAmbientLightDoubleColor:partition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",color:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v1, "AmbientManagerNew"

    invoke-static {v1, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
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

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->setAmbientLightEnable(Z)I

    move-result v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAmbientLightEnable:enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",result:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AmbientManagerNew"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public setAmbientLightMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
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

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->setAmbientLightMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAmbientLightMode:partition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",mode:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AmbientManagerNew"

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public setAmbientLightMonoColor(Ljava/lang/String;Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;)I
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->transform(Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;)Lcom/xiaopeng/xuimanager/ambient/Color;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->setAmbientLightMonoColor(Ljava/lang/String;Lcom/xiaopeng/xuimanager/ambient/Color;)I

    move-result v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAmbientLightMonoColor:partition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",hasRGB: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p2, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;->hasRgb:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "color: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AmbientManagerNew"

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public setAmbientLightRegionBright(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
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

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->setAmbientLightRegionBright(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAmbientLightRegionBright:partition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",region:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",bright:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AmbientManagerNew"

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public setAmbientLightRegionColor(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;)I
    .locals 3
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

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->transform(Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;)Lcom/xiaopeng/xuimanager/ambient/Color;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->setAmbientLightRegionColor(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/ambient/Color;)I

    move-result v0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAmbientLightRegionColor:partition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",region:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",color:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AmbientManagerNew"

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public setAmbientLightThemeColor(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
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

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->setAmbientLightThemeColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAmbientLightThemeColor:partition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",themeColor:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AmbientManagerNew"

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public showAmbientLightColorTypes()Ljava/util/Set;
    .locals 3
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

    const-string v0, "AmbientManagerNew"

    const-string/jumbo v1, "showAmbientLightColorTypes"

    const/4 v2, 0x0

    .line 141
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->showAmbientLightColorTypes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public showAmbientLightEffectPartitions()Ljava/util/Set;
    .locals 3
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

    const-string v0, "AmbientManagerNew"

    const-string/jumbo v1, "showAmbientLightEffectPartitions"

    const/4 v2, 0x0

    .line 61
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->showAmbientLightEffectPartitions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public showAmbientLightEffects()Ljava/util/Set;
    .locals 3
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

    const-string v0, "AmbientManagerNew"

    const-string/jumbo v1, "showAmbientLightEffects"

    const/4 v2, 0x0

    .line 67
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->showAmbientLightEffects()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public showAmbientLightModes()Ljava/util/Set;
    .locals 4
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

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->showAmbientLightModes()Ljava/util/Set;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showAmbientLightModes:result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AmbientManagerNew"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public stopAmbientLightEffect()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->stopAmbientLightEffect()I

    move-result v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopAmbientLightEffect:result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AmbientManagerNew"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public subAmbientLightMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
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

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->subAmbientLightMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subAmbientLightMode:partition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",mode:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",result:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AmbientManagerNew"

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method
