.class public Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;
.super Ljava/lang/Object;
.source "BrightnessManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/brightness/BrightnessManager$SingletonHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BrightnessManager"

.field private static mServiceName:Ljava/lang/String;


# instance fields
.field private mService:Lcom/xiaopeng/xuimanager/brightness/IBrightnessManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/brightness/IBrightnessManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/brightness/IBrightnessManager;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;->mService:Lcom/xiaopeng/xuimanager/brightness/IBrightnessManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/brightness/BrightnessManager$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;
    .locals 1

    .line 25
    invoke-static {}, Lcom/xiaopeng/xuimanager/brightness/BrightnessManager$SingletonHolder;->access$100()Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 89
    sget-object v0, Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;->mServiceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;->mServiceName:Ljava/lang/String;

    .line 92
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 30
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/brightness/IBrightnessManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/brightness/IBrightnessManager;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;->mService:Lcom/xiaopeng/xuimanager/brightness/IBrightnessManager;

    return-void
.end method

.method public onXUIConnected(Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "BrightnessManager"

    if-nez p1, :cond_0

    const-string p1, "onXUIConnected,service binder is null"

    .line 66
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;->mService:Lcom/xiaopeng/xuimanager/brightness/IBrightnessManager;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/brightness/IBrightnessManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIConnected,service is the same:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 73
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/brightness/IBrightnessManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/brightness/IBrightnessManager;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;->mService:Lcom/xiaopeng/xuimanager/brightness/IBrightnessManager;

    return-void
.end method

.method public onXUIDisconnected()V
    .locals 0

    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 81
    sput-object p1, Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public setXpAllPanelBrightness(IILjava/lang/String;)V
    .locals 1

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;->mService:Lcom/xiaopeng/xuimanager/brightness/IBrightnessManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/brightness/IBrightnessManager;->setXpAllPanelBrightness(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setXpAllPanelBrightness error, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BrightnessManager"

    invoke-static {p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setXpPanelBrightness(Ljava/lang/String;)V
    .locals 2

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;->mService:Lcom/xiaopeng/xuimanager/brightness/IBrightnessManager;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/brightness/IBrightnessManager;->setXpPanelBrightness(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setXpPanelBrightness error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BrightnessManager"

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
