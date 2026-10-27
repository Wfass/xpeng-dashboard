.class public Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;
.super Ljava/lang/Object;
.source "AmbientManagerCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AmbientManagerCompat"


# instance fields
.field protected mManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;


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

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->isSupportNewApi(Lcom/xiaopeng/xuimanager/XUIManager;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AmbientManagerCompat"

    if-eqz v0, :cond_0

    const-string v0, "AmbientManagerCompat: isSupportNewApi"

    .line 17
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;->newInstance(Lcom/xiaopeng/xuimanager/XUIManager;)Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->mManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;

    goto :goto_0

    :cond_0
    const-string v0, "AmbientManagerCompat: is not SupportNewApi"

    .line 20
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 21
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;->newInstance(Lcom/xiaopeng/xuimanager/XUIManager;)Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->mManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;

    :goto_0
    return-void
.end method

.method private isSupportNewApi()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->mManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;

    instance-of v0, v0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerNew;

    return v0
.end method

.method public static final isSupportNewApi(Lcom/xiaopeng/xuimanager/XUIManager;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "xuiManager"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ambient"

    .line 27
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception p0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportNewApi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AmbientManagerCompat"

    invoke-static {v1, p0, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method private isSupportOldApi()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->mManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;

    instance-of v0, v0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerOld;

    return v0
.end method


# virtual methods
.method public getAmbientLightBright(Ljava/lang/String;)I
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

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->mManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;->getAmbientLightBright(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getAmbientLightColorType(Ljava/lang/String;)Ljava/lang/String;
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

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->mManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;->getAmbientLightColorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAmbientLightDoubleColor(Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
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

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->mManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;->getAmbientLightDoubleColor(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public getAmbientLightEnable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->mManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;->getAmbientLightEnable()Z

    move-result v0

    return v0
.end method

.method public getAmbientLightMode(Ljava/lang/String;)Ljava/lang/String;
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

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->mManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;->getAmbientLightMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAmbientLightMonoColor(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;
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

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->mManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;->getAmbientLightMonoColor(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;

    move-result-object p1

    return-object p1
.end method

.method public isSupportAtlApiControl()Z
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->isSupportNewApi()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->isSupportOldApi()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSupportDoubleThemeColor(Ljava/lang/String;)Z
    .locals 1
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

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->mManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;->isSupportDoubleThemeColor(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSupportNewService()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->mManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;->isSupportNewService()Z

    move-result v0

    return v0
.end method

.method public registerListener(Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->mManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;->registerListener(Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;)V

    :cond_0
    return-void
.end method

.method public setAmbientLightBright(Ljava/lang/String;I)V
    .locals 1
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

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->mManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;->setAmbientLightBright(Ljava/lang/String;I)I

    return-void
.end method

.method public setAmbientLightColorType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->mManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;->setAmbientLightColorType(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAmbientLightDoubleColor(Ljava/lang/String;Landroid/util/Pair;)V
    .locals 1
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
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->mManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;->setAmbientLightDoubleColor(Ljava/lang/String;Landroid/util/Pair;)I

    return-void
.end method

.method public setAmbientLightEnable(Z)V
    .locals 1
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

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->mManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;->setAmbientLightEnable(Z)I

    return-void
.end method

.method public setAmbientLightMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->mManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;->setAmbientLightMode(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAmbientLightMonoColor(Ljava/lang/String;Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;)V
    .locals 1
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

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->mManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;->setAmbientLightMonoColor(Ljava/lang/String;Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientColor;)I

    return-void
.end method

.method public unregisterAllListeners()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->mManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;->unregisterAllListeners()V

    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientManagerCompat;->mManager:Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/ambient/AbstractAmbientManager;->unregisterListener(Lcom/xiaopeng/carcontrol/carmanager/ambient/AmbientEventListener;)V

    :cond_0
    return-void
.end method
