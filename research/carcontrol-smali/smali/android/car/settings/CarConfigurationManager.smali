.class public Landroid/car/settings/CarConfigurationManager;
.super Landroid/car/CarManagerBase;
.source "CarConfigurationManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarConfigurationManager"


# instance fields
.field private final mConfigurationService:Landroid/car/settings/ICarConfigurationManager;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 38
    invoke-static {p2}, Landroid/car/settings/ICarConfigurationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/settings/ICarConfigurationManager;

    move-result-object p1

    iput-object p1, p0, Landroid/car/settings/CarConfigurationManager;->mConfigurationService:Landroid/car/settings/ICarConfigurationManager;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "configuration"

    return-object v0
.end method


# virtual methods
.method public getSpeedBumpConfiguration()Landroid/car/settings/SpeedBumpConfiguration;
    .locals 2

    .line 48
    :try_start_0
    iget-object v0, p0, Landroid/car/settings/CarConfigurationManager;->mConfigurationService:Landroid/car/settings/ICarConfigurationManager;

    invoke-interface {v0}, Landroid/car/settings/ICarConfigurationManager;->getSpeedBumpConfiguration()Landroid/car/settings/SpeedBumpConfiguration;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, v0, v1}, Landroid/car/settings/CarConfigurationManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/settings/SpeedBumpConfiguration;

    return-object v0
.end method

.method public onCarDisconnected()V
    .locals 0

    return-void
.end method
