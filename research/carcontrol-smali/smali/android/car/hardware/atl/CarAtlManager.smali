.class public final Landroid/car/hardware/atl/CarAtlManager;
.super Landroid/car/hardware/CarEcuManager;
.source "CarAtlManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/atl/CarAtlManager$Atl_light_data;,
        Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;,
        Landroid/car/hardware/atl/CarAtlManager$PropertyId;
    }
.end annotation


# static fields
.field public static final ATL_ACTIVE:I = 0x1

.field public static final ATL_AUTO_BRIGHTNESS_OFF:I = 0x0

.field public static final ATL_AUTO_BRIGHTNESS_ON:I = 0x1

.field public static final ATL_DOUBLE_COLOR:I = 0x1

.field public static final ATL_GROUP_0:I = 0x1

.field public static final ATL_GROUP_1:I = 0x2

.field public static final ATL_GROUP_10:I = 0xb

.field public static final ATL_GROUP_11:I = 0xc

.field public static final ATL_GROUP_12:I = 0xd

.field public static final ATL_GROUP_13:I = 0xe

.field public static final ATL_GROUP_14:I = 0xf

.field public static final ATL_GROUP_15:I = 0x10

.field public static final ATL_GROUP_16:I = 0x11

.field public static final ATL_GROUP_17:I = 0x12

.field public static final ATL_GROUP_18:I = 0x13

.field public static final ATL_GROUP_19:I = 0x14

.field public static final ATL_GROUP_2:I = 0x3

.field public static final ATL_GROUP_20:I = 0x15

.field public static final ATL_GROUP_21:I = 0x16

.field public static final ATL_GROUP_3:I = 0x4

.field public static final ATL_GROUP_4:I = 0x5

.field public static final ATL_GROUP_5:I = 0x6

.field public static final ATL_GROUP_6:I = 0x7

.field public static final ATL_GROUP_7:I = 0x8

.field public static final ATL_GROUP_8:I = 0x9

.field public static final ATL_GROUP_9:I = 0xa

.field public static final ATL_LIGHT_A1:I = 0x1

.field public static final ATL_LIGHT_A10:I = 0xa

.field public static final ATL_LIGHT_A10_BIT:I = 0x200

.field public static final ATL_LIGHT_A11:I = 0xb

.field public static final ATL_LIGHT_A11_BIT:I = 0x400

.field public static final ATL_LIGHT_A12:I = 0xc

.field public static final ATL_LIGHT_A12_BIT:I = 0x800

.field public static final ATL_LIGHT_A1_BIT:I = 0x1

.field public static final ATL_LIGHT_A2:I = 0x2

.field public static final ATL_LIGHT_A2_BIT:I = 0x2

.field public static final ATL_LIGHT_A3:I = 0x3

.field public static final ATL_LIGHT_A3_BIT:I = 0x4

.field public static final ATL_LIGHT_A4:I = 0x4

.field public static final ATL_LIGHT_A4_BIT:I = 0x8

.field public static final ATL_LIGHT_A5:I = 0x5

.field public static final ATL_LIGHT_A5_BIT:I = 0x10

.field public static final ATL_LIGHT_A6:I = 0x6

.field public static final ATL_LIGHT_A6_BIT:I = 0x20

.field public static final ATL_LIGHT_A7:I = 0x7

.field public static final ATL_LIGHT_A7_BIT:I = 0x40

.field public static final ATL_LIGHT_A8:I = 0x8

.field public static final ATL_LIGHT_A8_BIT:I = 0x80

.field public static final ATL_LIGHT_A9:I = 0x9

.field public static final ATL_LIGHT_A9_BIT:I = 0x100

.field public static final ATL_LIGHT_B1:I = 0xd

.field public static final ATL_LIGHT_B10:I = 0x16

.field public static final ATL_LIGHT_B10_BIT:I = 0x200000

.field public static final ATL_LIGHT_B1_BIT:I = 0x1000

.field public static final ATL_LIGHT_B2:I = 0xe

.field public static final ATL_LIGHT_B2_BIT:I = 0x2000

.field public static final ATL_LIGHT_B3:I = 0xf

.field public static final ATL_LIGHT_B3_BIT:I = 0x4000

.field public static final ATL_LIGHT_B4:I = 0x10

.field public static final ATL_LIGHT_B4_BIT:I = 0x8000

.field public static final ATL_LIGHT_B5:I = 0x11

.field public static final ATL_LIGHT_B5_BIT:I = 0x10000

.field public static final ATL_LIGHT_B6:I = 0x12

.field public static final ATL_LIGHT_B6_BIT:I = 0x20000

.field public static final ATL_LIGHT_B7:I = 0x13

.field public static final ATL_LIGHT_B7_BIT:I = 0x40000

.field public static final ATL_LIGHT_B8:I = 0x14

.field public static final ATL_LIGHT_B8_BIT:I = 0x80000

.field public static final ATL_LIGHT_B9:I = 0x15

.field public static final ATL_LIGHT_B9_BIT:I = 0x100000

.field public static final ATL_NOT_ACTIVE:I = 0x0

.field public static final ATL_NOT_READY:I = 0x0

.field public static final ATL_PROTOCOL0:I = 0x0

.field public static final ATL_PROTOCOL1:I = 0x1

.field public static final ATL_PROTOCOL2:I = 0x2

.field public static final ATL_READY:I = 0x1

.field public static final ATL_SINGLE_COLOR:I = 0x0

.field public static final ATL_SOLUTION0:I = 0x0

.field public static final ATL_SOLUTION1:I = 0x1

.field private static final DBG:Z = false

.field public static final ID_ATLS_COLOR_FADING_CTRL:I = 0x2170180e

.field public static final ID_ATLS_LIN0_DATA:I = 0x21709016

.field public static final ID_ATLS_LIN1_DATA:I = 0x21701814

.field public static final ID_ATLS_LIN2_DATA:I = 0x21701812

.field public static final ID_ATLS_LIN3_DATA:I = 0x21701813

.field public static final ID_ATLS_LIN5_DATA:I = 0x21701822

.field public static final ID_ATLS_SATELLITE_ATMOS_LIGHT_LDATA:I = 0x21701820

.field public static final ID_ATLS_SATELLITE_ATMOS_LIGHT_RDATA:I = 0x21701821

.field public static final ID_ATLS_SELF_DEFINED_CTRLDATA:I = 0x21701816

.field public static final ID_ATLS_SELF_DEFINED_MAIN_SW:I = 0x21411815

.field public static final ID_ATLS_SW_CTRL:I = 0x21401811
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_ATL_ATLS_ALLCTRL:I = 0x21701809

.field public static final ID_ATL_ATLS_MULTICTRL:I = 0x21701808

.field public static final ID_ATL_ATLS_SINGLECTRL:I = 0x21701807

.field public static final ID_ATL_AUTOBRIGHTNESSSW:I = 0x21401805

.field public static final ID_ATL_BRIGHTNESSCFG:I = 0x21401806

.field public static final ID_ATL_LR_POWER_ST:I = 0x21411810

.field public static final ID_ATL_OPEN:I = 0x2140180a

.field public static final ID_ATL_POWER_REQ:I = 0x2140180f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_ATL_THEMECOLORSWCFG:I = 0x21401802

.field public static final ID_ATL_THEMEFIRSTCOLORCFG:I = 0x21401803

.field public static final ID_ATL_THEMESECONDCOLORCFG:I = 0x21401804

.field public static final ID_ATL_WLCOMEFINISH:I = 0x21401801
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CarAtlManager"


# instance fields
.field private final mAtlPropertyIds:Landroid/util/ArraySet;
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

    const-string p4, "CarAtlManager"

    .line 649
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/car/hardware/CarEcuManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 614
    new-instance p1, Landroid/util/ArraySet;

    const/16 p2, 0x14

    new-array p2, p2, [Ljava/lang/Integer;

    const p4, 0x2140180a

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const p3, 0x21401802

    .line 615
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const p3, 0x21401803

    .line 616
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, p2, p4

    const p3, 0x21401804

    .line 617
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aput-object p3, p2, p4

    const p3, 0x21401805

    .line 618
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, p2, p4

    const p3, 0x21401806

    .line 619
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x5

    aput-object p3, p2, p4

    const p3, 0x21701807

    .line 620
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x6

    aput-object p3, p2, p4

    const p3, 0x21701808

    .line 621
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x7

    aput-object p3, p2, p4

    const p3, 0x21701809

    .line 622
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x8

    aput-object p3, p2, p4

    const p3, 0x2170180e    # 8.1347E-19f

    .line 623
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x9

    aput-object p3, p2, p4

    const p3, 0x2140180f

    .line 624
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xa

    aput-object p3, p2, p4

    const p3, 0x21411810

    .line 625
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xb

    aput-object p3, p2, p4

    const p3, 0x21701812

    .line 626
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xc

    aput-object p3, p2, p4

    const p3, 0x21701813

    .line 627
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xd

    aput-object p3, p2, p4

    const p3, 0x21701814

    .line 628
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xe

    aput-object p3, p2, p4

    const p3, 0x21701822

    .line 629
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0xf

    aput-object p3, p2, p4

    const p3, 0x21411815

    .line 630
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x10

    aput-object p3, p2, p4

    const p3, 0x21701816

    .line 631
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x11

    aput-object p3, p2, p4

    const p3, 0x21701820

    .line 632
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x12

    aput-object p3, p2, p4

    const p3, 0x21701821

    .line 633
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x13

    aput-object p3, p2, p4

    .line 614
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/car/hardware/atl/CarAtlManager;->mAtlPropertyIds:Landroid/util/ArraySet;

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xp_atl"

    return-object v0
.end method

.method public static isZonedProperty(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAtlOpen()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 691
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAtlOpen()I

    move-result v0

    return v0
.end method

.method public getAtlReady()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 724
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAtlReady()I

    move-result v0

    return v0
.end method

.method public getAtlSwitchStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1033
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAtlSwitchStatus()I

    move-result v0

    return v0
.end method

.method public getAutoBrightness()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 826
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAutoBrightness()I

    move-result v0

    return v0
.end method

.method public getBrightnessLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 856
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getBrightnessLevel()I

    move-result v0

    return v0
.end method

.method public getDoubleThemeColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 740
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getDoubleThemeColor()I

    move-result v0

    return v0
.end method

.method public getLrPowerRequestSwitchStatus()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 993
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getAtlLrPowerRequestSwitchStatus()[I

    move-result-object v0

    return-object v0
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

    .line 678
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mAtlPropertyIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getSelfDefinedAtlMainSwitch()[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1140
    fill-array-data v0, :array_0

    const v1, 0x21411815

    const/4 v2, 0x0

    .line 1142
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/car/hardware/atl/CarAtlManager;->getIntVectorProperty(II)[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 1144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "throw Exception e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarAtlManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getThemeFirstColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 769
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getThemeFirstColor()I

    move-result v0

    return v0
.end method

.method public getThemeSecondColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 797
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0}, Landroid/car/hardware/XpVehicle/IXpVehicle;->getThemeSecondColor()I

    move-result v0

    return v0
.end method

.method public setAllLightData(Z[B[B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 943
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAllLightData(Z[B[B[B)V

    return-void
.end method

.method public setAtlConfiguration(Landroid/car/hardware/atl/AtlConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 956
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-virtual {p1}, Landroid/car/hardware/atl/AtlConfiguration;->getData()[B

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAtlConfiguration([B)V

    return-void
.end method

.method public setAtlLin0Data([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1106
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAtlLin0Data([B)V

    return-void
.end method

.method public setAtlLin1Data([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1093
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAtlLin1Data([B)V

    return-void
.end method

.method public setAtlLin2Data([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1047
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAtlLin2Data([B)V

    return-void
.end method

.method public setAtlLin3Data([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1061
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAtlLin3Data([B)V

    return-void
.end method

.method public setAtlLin5Data([B)V
    .locals 2

    const v0, 0x21701822

    const/4 v1, 0x0

    .line 1075
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/atl/CarAtlManager;->setByteVectorProperty(II[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1077
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw RemoteException | RuntimeException e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarAtlManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAtlOpen(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 706
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAtlOpen(I)V

    return-void
.end method

.method public setAtlSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1013
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAtlSwitchStatus(I)V

    return-void
.end method

.method public setAutoBrightness(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 842
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAutoBrightness(I)V

    return-void
.end method

.method public setBrightnessLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 870
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setBrightnessLevel(I)V

    return-void
.end method

.method public setDoubleThemeColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 755
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setDoubleThemeColor(I)V

    return-void
.end method

.method public setGroutLightData(BBIZBBB)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 921
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setGroutLightData(BBIZBBB)V

    return-void
.end method

.method public setPowerRequestSwitchStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 976
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setAtlPowerRequestSwitchStatus(I)V

    return-void
.end method

.method public setSatelliteSwAtmosLightDataLeft([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21701820

    const/4 v1, 0x0

    .line 1183
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/atl/CarAtlManager;->setByteVectorProperty(II[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1185
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw RemoteException | RuntimeException e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarAtlManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setSatelliteSwAtmosLightDataRight([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0x21701821

    const/4 v1, 0x0

    .line 1203
    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Landroid/car/hardware/atl/CarAtlManager;->setByteVectorProperty(II[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1205
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw RemoteException | RuntimeException e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarAtlManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setSelfDefinedAtlMainSwitch(I)I
    .locals 2

    .line 1121
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSelfDefinedAtlMainSwitch(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw Exception e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarAtlManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public setSelfDefinedAtlVariableLengthData([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1163
    :try_start_0
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setSelfDefinedAtlVariableLengthData([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1165
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "throw RemoteException | RuntimeException e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarAtlManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setThemeFirstColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 783
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setThemeFirstColor(I)V

    return-void
.end method

.method public setThemeSecondColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 811
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    invoke-interface {v0, p1}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setThemeSecondColor(I)V

    return-void
.end method

.method public setTwoLightData(B[BZ[B[B[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 894
    iget-object v0, p0, Landroid/car/hardware/atl/CarAtlManager;->mService:Landroid/car/hardware/XpVehicle/IXpVehicle;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/car/hardware/XpVehicle/IXpVehicle;->setTwoLightData(B[BZ[B[B[B)V

    return-void
.end method
