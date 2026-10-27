.class public Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager;
.super Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;
.source "OsdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager$1;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager;
    .locals 1

    .line 89
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager$Holder;->access$100()Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected logTag()Ljava/lang/String;
    .locals 1

    const-string v0, "Osd"

    return-object v0
.end method

.method public notifyAllOsdHide(I)Z
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 68
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->hideAllOsd(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    return v1

    :catch_0
    move-exception p1

    .line 71
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    return v1
.end method

.method public notifyAllOsdPopPanelHide(I)Z
    .locals 2

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager;->setOsdViewEnable(IZ)Z

    move-result v1

    .line 47
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager;->notifyAllOsdHide(I)Z

    move-result p1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public notifyHide(Lcom/xiaopeng/xuimanager/systemui/osd/IOsdListener;Ljava/lang/String;)Z
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 36
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->hideOsd(Lcom/xiaopeng/xuimanager/systemui/osd/IOsdListener;Ljava/lang/String;)I

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

    .line 39
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    return v1
.end method

.method public requestShow(Lcom/xiaopeng/xuimanager/systemui/osd/IOsdListener;ILjava/lang/String;)Z
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 23
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->showOsd(Lcom/xiaopeng/xuimanager/systemui/osd/IOsdListener;ILjava/lang/String;)I

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

    .line 26
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    return v1
.end method

.method public setOsdViewEnable(IZ)Z
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/OsdManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 55
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->setOsdViewEnable(IZ)I

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

    .line 58
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    return v1
.end method
