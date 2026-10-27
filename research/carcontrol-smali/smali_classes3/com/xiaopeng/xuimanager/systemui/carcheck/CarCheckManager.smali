.class public Lcom/xiaopeng/xuimanager/systemui/carcheck/CarCheckManager;
.super Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;
.source "CarCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/carcheck/CarCheckManager$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/systemui/carcheck/CarCheckManager$1;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/carcheck/CarCheckManager;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaopeng/xuimanager/systemui/carcheck/CarCheckManager;
    .locals 1

    .line 66
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/carcheck/CarCheckManager$Holder;->access$100()Lcom/xiaopeng/xuimanager/systemui/carcheck/CarCheckManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected logTag()Ljava/lang/String;
    .locals 1

    const-string v0, "CarCheckManager"

    return-object v0
.end method

.method public notifyUIReady()Z
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/carcheck/CarCheckManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 40
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->notifyUIReady()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    return v1
.end method

.method public registerCarCheckListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/carcheck/ICarCheckListener;)Z
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/carcheck/CarCheckManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 14
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->registerCarCheckListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/carcheck/ICarCheckListener;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move v1, p2

    :cond_0
    return v1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    return v1
.end method

.method public unRegisterCarCheckListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/carcheck/ICarCheckListener;)Z
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/carcheck/CarCheckManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 27
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->unRegisterCarCheckListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/carcheck/ICarCheckListener;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move v1, p2

    :cond_0
    return v1

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    return v1
.end method
