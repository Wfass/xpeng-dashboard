.class public final Landroid/car/hardware/vpm/CarVpmManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarVpmManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;,
        Landroid/car/hardware/vpm/CarVpmManager$PropertyId;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final ID_VPM_LDW_LEFT_WARNING_ST:I = 0x2140265d

.field public static final ID_VPM_LDW_RIGHT_WARNING_ST:I = 0x2140265c

.field public static final ID_VPM_RDP_LEFT_WARNING_ST:I = 0x214026d8

.field public static final ID_VPM_RDP_RIGHT_WARNING_ST:I = 0x214026d7

.field private static final TAG:Ljava/lang/String; = "CarVpmManager"

.field public static final VPM_LDW_NODISPLAY:I = 0x0

.field public static final VPM_LDW_TRACKING:I = 0x1

.field public static final VPM_LDW_WARNING:I = 0x2

.field public static final VPM_RDP_ELK_LDW_WARNING:I = 0x2

.field public static final VPM_RDP_ELK_WARNING:I = 0x4

.field public static final VPM_RDP_LKA_WARNING_1:I = 0x3

.field public static final VPM_RDP_LKA_WARNING_2:I = 0x1

.field public static final VPM_RDP_NODISPLAY:I


# instance fields
.field private final mVpmPropertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    const/4 p3, 0x0

    const-string p4, "CarVpmManager"

    .line 148
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 124
    new-instance p1, Landroid/util/ArraySet;

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x2140265d

    .line 125
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x2140265c

    .line 126
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x214026d8

    .line 127
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x214026d7

    .line 128
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    .line 124
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/vpm/CarVpmManager;->mVpmPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_vpm"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getLdwLeftWarningStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Landroid/car/hardware/vpm/CarVpmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVpmLdwLeftWarningStatus()I

    move-result v0

    return v0
.end method

.method public getLdwRightWarningStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Landroid/car/hardware/vpm/CarVpmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVpmLdwRightWarningStatus()I

    move-result v0

    return v0
.end method

.method protected getPropertyIds()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Landroid/car/hardware/vpm/CarVpmManager;->mVpmPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getRdpLeftWarningStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Landroid/car/hardware/vpm/CarVpmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVpmRdpLeftWarningStatus()I

    move-result v0

    return v0
.end method

.method public getRdpRightWarningStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Landroid/car/hardware/vpm/CarVpmManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getVpmRdpRightWarningStatus()I

    move-result v0

    return v0
.end method
