.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NaviFacility"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityOrBuilder;"
    }
.end annotation


# static fields
.field public static final BUILDING_STATUS_FIELD_NUMBER:I = 0xd

.field public static final CHILDREN_FIELD_NUMBER:I = 0xe

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

.field public static final ENERGY_CONSUME_FIELD_NUMBER:I = 0x8

.field public static final IS_CHARGE_FIELD_NUMBER:I = 0xa

.field public static final NAME_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAY_TIP_FIELD_NUMBER:I = 0x6

.field public static final POS_FIELD_NUMBER:I = 0x4

.field public static final REMAIN_DIST_FIELD_NUMBER:I = 0x1

.field public static final REMAIN_TIME_FIELD_NUMBER:I = 0x7

.field public static final SAPA_CHARGE_COUNT_FIELD_NUMBER:I = 0xb

.field public static final SAPA_CHARGE_USABLE_FIELD_NUMBER:I = 0xc

.field public static final SAPA_DETAIL_FIELD_NUMBER:I = 0x5

.field public static final SERVICE_POI_ID_FIELD_NUMBER:I = 0x9

.field public static final TYPE_FIELD_NUMBER:I = 0x2


# instance fields
.field private buildingStatus_:I

.field private children_:Ljava/lang/String;

.field private energyConsume_:I

.field private isCharge_:I

.field private name_:Ljava/lang/String;

.field private payTip_:I

.field private pos_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

.field private remainDist_:I

.field private remainTime_:J

.field private sapaChargeCount_:I

.field private sapaChargeUsable_:I

.field private sapaDetail_:J

.field private servicePoiId_:Ljava/lang/String;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12649
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    .line 12650
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 11034
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 11035
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->remainDist_:I

    .line 11036
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->type_:I

    const-string v1, ""

    .line 11037
    iput-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->name_:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 11038
    iput-wide v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaDetail_:J

    .line 11039
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->payTip_:I

    .line 11040
    iput-wide v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->remainTime_:J

    .line 11041
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->energyConsume_:I

    .line 11042
    iput-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->servicePoiId_:Ljava/lang/String;

    .line 11043
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->isCharge_:I

    .line 11044
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaChargeCount_:I

    .line 11045
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaChargeUsable_:I

    .line 11046
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->buildingStatus_:I

    .line 11047
    iput-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->children_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16300()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;
    .locals 1

    .line 11029
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    return-object v0
.end method

.method static synthetic access$16400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;I)V
    .locals 0

    .line 11029
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->setRemainDist(I)V

    return-void
.end method

.method static synthetic access$16500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V
    .locals 0

    .line 11029
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->clearRemainDist()V

    return-void
.end method

.method static synthetic access$16600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;I)V
    .locals 0

    .line 11029
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->setType(I)V

    return-void
.end method

.method static synthetic access$16700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V
    .locals 0

    .line 11029
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->clearType()V

    return-void
.end method

.method static synthetic access$16800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;Ljava/lang/String;)V
    .locals 0

    .line 11029
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V
    .locals 0

    .line 11029
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->clearName()V

    return-void
.end method

.method static synthetic access$17000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 11029
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->setNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$17100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)V
    .locals 0

    .line 11029
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->setPos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)V

    return-void
.end method

.method static synthetic access$17200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;)V
    .locals 0

    .line 11029
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->setPos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;)V

    return-void
.end method

.method static synthetic access$17300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)V
    .locals 0

    .line 11029
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->mergePos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)V

    return-void
.end method

.method static synthetic access$17400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V
    .locals 0

    .line 11029
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->clearPos()V

    return-void
.end method

.method static synthetic access$17500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;J)V
    .locals 0

    .line 11029
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->setSapaDetail(J)V

    return-void
.end method

.method static synthetic access$17600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V
    .locals 0

    .line 11029
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->clearSapaDetail()V

    return-void
.end method

.method static synthetic access$17700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;I)V
    .locals 0

    .line 11029
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->setPayTip(I)V

    return-void
.end method

.method static synthetic access$17800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V
    .locals 0

    .line 11029
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->clearPayTip()V

    return-void
.end method

.method static synthetic access$17900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;J)V
    .locals 0

    .line 11029
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->setRemainTime(J)V

    return-void
.end method

.method static synthetic access$18000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V
    .locals 0

    .line 11029
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->clearRemainTime()V

    return-void
.end method

.method static synthetic access$18100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;I)V
    .locals 0

    .line 11029
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->setEnergyConsume(I)V

    return-void
.end method

.method static synthetic access$18200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V
    .locals 0

    .line 11029
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->clearEnergyConsume()V

    return-void
.end method

.method static synthetic access$18300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;Ljava/lang/String;)V
    .locals 0

    .line 11029
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->setServicePoiId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V
    .locals 0

    .line 11029
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->clearServicePoiId()V

    return-void
.end method

.method static synthetic access$18500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 11029
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->setServicePoiIdBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$18600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;I)V
    .locals 0

    .line 11029
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->setIsCharge(I)V

    return-void
.end method

.method static synthetic access$18700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V
    .locals 0

    .line 11029
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->clearIsCharge()V

    return-void
.end method

.method static synthetic access$18800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;I)V
    .locals 0

    .line 11029
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->setSapaChargeCount(I)V

    return-void
.end method

.method static synthetic access$18900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V
    .locals 0

    .line 11029
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->clearSapaChargeCount()V

    return-void
.end method

.method static synthetic access$19000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;I)V
    .locals 0

    .line 11029
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->setSapaChargeUsable(I)V

    return-void
.end method

.method static synthetic access$19100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V
    .locals 0

    .line 11029
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->clearSapaChargeUsable()V

    return-void
.end method

.method static synthetic access$19200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;I)V
    .locals 0

    .line 11029
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->setBuildingStatus(I)V

    return-void
.end method

.method static synthetic access$19300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V
    .locals 0

    .line 11029
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->clearBuildingStatus()V

    return-void
.end method

.method static synthetic access$19400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;Ljava/lang/String;)V
    .locals 0

    .line 11029
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->setChildren(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V
    .locals 0

    .line 11029
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->clearChildren()V

    return-void
.end method

.method static synthetic access$19600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 11029
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->setChildrenBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method private clearBuildingStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 11604
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->buildingStatus_:I

    return-void
.end method

.method private clearChildren()V
    .locals 1

    .line 11654
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->getChildren()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->children_:Ljava/lang/String;

    return-void
.end method

.method private clearEnergyConsume()V
    .locals 1

    const/4 v0, 0x0

    .line 11398
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->energyConsume_:I

    return-void
.end method

.method private clearIsCharge()V
    .locals 1

    const/4 v0, 0x0

    .line 11499
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->isCharge_:I

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 11166
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearPayTip()V
    .locals 1

    const/4 v0, 0x0

    .line 11328
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->payTip_:I

    return-void
.end method

.method private clearPos()V
    .locals 1

    const/4 v0, 0x0

    .line 11257
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->pos_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    return-void
.end method

.method private clearRemainDist()V
    .locals 1

    const/4 v0, 0x0

    .line 11081
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->remainDist_:I

    return-void
.end method

.method private clearRemainTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 11363
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->remainTime_:J

    return-void
.end method

.method private clearSapaChargeCount()V
    .locals 1

    const/4 v0, 0x0

    .line 11534
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaChargeCount_:I

    return-void
.end method

.method private clearSapaChargeUsable()V
    .locals 1

    const/4 v0, 0x0

    .line 11569
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaChargeUsable_:I

    return-void
.end method

.method private clearSapaDetail()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 11293
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaDetail_:J

    return-void
.end method

.method private clearServicePoiId()V
    .locals 1

    .line 11448
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->getServicePoiId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->servicePoiId_:Ljava/lang/String;

    return-void
.end method

.method private clearType()V
    .locals 1

    const/4 v0, 0x0

    .line 11116
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->type_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;
    .locals 1

    .line 12654
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    return-object v0
.end method

.method private mergePos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)V
    .locals 2

    .line 11241
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->pos_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    if-eqz v0, :cond_0

    .line 11242
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11243
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->pos_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    .line 11244
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->pos_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    goto :goto_0

    .line 11246
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->pos_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;
    .locals 1

    .line 11846
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;
    .locals 1

    .line 11849
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11823
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11829
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11787
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11794
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11834
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11841
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11811
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11818
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11799
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11806
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;",
            ">;"
        }
    .end annotation

    .line 12660
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBuildingStatus(I)V
    .locals 0

    .line 11593
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->buildingStatus_:I

    return-void
.end method

.method private setChildren(Ljava/lang/String;)V
    .locals 0

    .line 11640
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11643
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->children_:Ljava/lang/String;

    return-void
.end method

.method private setChildrenBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 11666
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11668
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 11670
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->children_:Ljava/lang/String;

    return-void
.end method

.method private setEnergyConsume(I)V
    .locals 0

    .line 11387
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->energyConsume_:I

    return-void
.end method

.method private setIsCharge(I)V
    .locals 0

    .line 11488
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->isCharge_:I

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 11152
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11155
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 11178
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11180
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 11182
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->name_:Ljava/lang/String;

    return-void
.end method

.method private setPayTip(I)V
    .locals 0

    .line 11317
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->payTip_:I

    return-void
.end method

.method private setPos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;)V
    .locals 0

    .line 11230
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->pos_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    return-void
.end method

.method private setPos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)V
    .locals 0

    .line 11216
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11218
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->pos_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    return-void
.end method

.method private setRemainDist(I)V
    .locals 0

    .line 11070
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->remainDist_:I

    return-void
.end method

.method private setRemainTime(J)V
    .locals 0

    .line 11352
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->remainTime_:J

    return-void
.end method

.method private setSapaChargeCount(I)V
    .locals 0

    .line 11523
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaChargeCount_:I

    return-void
.end method

.method private setSapaChargeUsable(I)V
    .locals 0

    .line 11558
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaChargeUsable_:I

    return-void
.end method

.method private setSapaDetail(J)V
    .locals 0

    .line 11282
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaDetail_:J

    return-void
.end method

.method private setServicePoiId(Ljava/lang/String;)V
    .locals 0

    .line 11434
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11437
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->servicePoiId_:Ljava/lang/String;

    return-void
.end method

.method private setServicePoiIdBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 11460
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11462
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 11464
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->servicePoiId_:Ljava/lang/String;

    return-void
.end method

.method private setType(I)V
    .locals 0

    .line 11105
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->type_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 12470
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 12642
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 12633
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    monitor-enter p1

    .line 12634
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 12635
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 12637
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 12639
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 12519
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 12521
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 12526
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 12532
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_4

    .line 12613
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 12615
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->children_:Ljava/lang/String;

    goto :goto_1

    .line 12609
    :sswitch_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->buildingStatus_:I

    goto :goto_1

    .line 12604
    :sswitch_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaChargeUsable_:I

    goto :goto_1

    .line 12599
    :sswitch_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaChargeCount_:I

    goto :goto_1

    .line 12594
    :sswitch_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->isCharge_:I

    goto :goto_1

    .line 12587
    :sswitch_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 12589
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->servicePoiId_:Ljava/lang/String;

    goto :goto_1

    .line 12583
    :sswitch_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->energyConsume_:I

    goto :goto_1

    .line 12578
    :sswitch_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->remainTime_:J

    goto :goto_1

    .line 12573
    :sswitch_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->payTip_:I

    goto :goto_1

    .line 12568
    :sswitch_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaDetail_:J

    goto :goto_1

    .line 12555
    :sswitch_a
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->pos_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    if-eqz p1, :cond_3

    .line 12556
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;

    goto :goto_2

    :cond_3
    move-object p1, v0

    .line 12558
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->pos_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    if-eqz p1, :cond_2

    .line 12560
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 12561
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->pos_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    goto :goto_1

    .line 12548
    :sswitch_b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 12550
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->name_:Ljava/lang/String;

    goto/16 :goto_1

    .line 12544
    :sswitch_c
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->type_:I

    goto/16 :goto_1

    .line 12539
    :sswitch_d
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->remainDist_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_3
    :sswitch_e
    move v1, v2

    goto/16 :goto_1

    :goto_4
    if-nez p1, :cond_2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 12623
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 12625
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 12621
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12626
    :goto_5
    throw p1

    .line 12630
    :cond_4
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    return-object p1

    .line 12484
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 12485
    check-cast p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    .line 12486
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->remainDist_:I

    if-eqz p1, :cond_5

    move v0, v2

    goto :goto_6

    :cond_5
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->remainDist_:I

    if-eqz v3, :cond_6

    move v4, v2

    goto :goto_7

    :cond_6
    move v4, v1

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->remainDist_:I

    .line 12488
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->type_:I

    if-eqz p1, :cond_7

    move v0, v2

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    iget v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->type_:I

    if-eqz v3, :cond_8

    move v4, v2

    goto :goto_9

    :cond_8
    move v4, v1

    :goto_9
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->type_:I

    .line 12490
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->name_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->name_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->name_:Ljava/lang/String;

    .line 12491
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->name_:Ljava/lang/String;

    .line 12490
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->name_:Ljava/lang/String;

    .line 12492
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->pos_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->pos_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->pos_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    .line 12493
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaDetail_:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_9

    move v4, v2

    goto :goto_a

    :cond_9
    move v4, v1

    :goto_a
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaDetail_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_a

    move v7, v2

    goto :goto_b

    :cond_a
    move v7, v1

    :goto_b
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaDetail_:J

    .line 12495
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->payTip_:I

    if-eqz p1, :cond_b

    move v0, v2

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    iget v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->payTip_:I

    if-eqz v3, :cond_c

    move v4, v2

    goto :goto_d

    :cond_c
    move v4, v1

    :goto_d
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->payTip_:I

    .line 12497
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->remainTime_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_d

    move v4, v2

    goto :goto_e

    :cond_d
    move v4, v1

    :goto_e
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->remainTime_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_e

    move v7, v2

    goto :goto_f

    :cond_e
    move v7, v1

    :goto_f
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->remainTime_:J

    .line 12499
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->energyConsume_:I

    if-eqz p1, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    iget v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->energyConsume_:I

    if-eqz v3, :cond_10

    move v4, v2

    goto :goto_11

    :cond_10
    move v4, v1

    :goto_11
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->energyConsume_:I

    .line 12501
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->servicePoiId_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->servicePoiId_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->servicePoiId_:Ljava/lang/String;

    .line 12502
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->servicePoiId_:Ljava/lang/String;

    .line 12501
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->servicePoiId_:Ljava/lang/String;

    .line 12503
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->isCharge_:I

    if-eqz p1, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    iget v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->isCharge_:I

    if-eqz v3, :cond_12

    move v4, v2

    goto :goto_13

    :cond_12
    move v4, v1

    :goto_13
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->isCharge_:I

    .line 12505
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaChargeCount_:I

    if-eqz p1, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    iget v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaChargeCount_:I

    if-eqz v3, :cond_14

    move v4, v2

    goto :goto_15

    :cond_14
    move v4, v1

    :goto_15
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaChargeCount_:I

    .line 12507
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaChargeUsable_:I

    if-eqz p1, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    iget v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaChargeUsable_:I

    if-eqz v3, :cond_16

    move v4, v2

    goto :goto_17

    :cond_16
    move v4, v1

    :goto_17
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaChargeUsable_:I

    .line 12509
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->buildingStatus_:I

    if-eqz p1, :cond_17

    move v0, v2

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    iget v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->buildingStatus_:I

    if-eqz v3, :cond_18

    move v1, v2

    :cond_18
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->buildingStatus_:I

    .line 12511
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->children_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->children_:Ljava/lang/String;

    iget-object v1, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->children_:Ljava/lang/String;

    .line 12512
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    iget-object p3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->children_:Ljava/lang/String;

    .line 12511
    invoke-interface {p2, p1, v0, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->children_:Ljava/lang/String;

    .line 12513
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 12481
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;-><init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 12475
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    return-object p1

    .line 12472
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_d
        0x10 -> :sswitch_c
        0x1a -> :sswitch_b
        0x22 -> :sswitch_a
        0x28 -> :sswitch_9
        0x30 -> :sswitch_8
        0x38 -> :sswitch_7
        0x40 -> :sswitch_6
        0x4a -> :sswitch_5
        0x50 -> :sswitch_4
        0x58 -> :sswitch_3
        0x60 -> :sswitch_2
        0x68 -> :sswitch_1
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBuildingStatus()I
    .locals 1

    .line 11582
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->buildingStatus_:I

    return v0
.end method

.method public getChildren()Ljava/lang/String;
    .locals 1

    .line 11617
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->children_:Ljava/lang/String;

    return-object v0
.end method

.method public getChildrenBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 11628
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->children_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEnergyConsume()I
    .locals 1

    .line 11376
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->energyConsume_:I

    return v0
.end method

.method public getIsCharge()I
    .locals 1

    .line 11477
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->isCharge_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 11129
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 11140
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPayTip()I
    .locals 1

    .line 11306
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->payTip_:I

    return v0
.end method

.method public getPos()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;
    .locals 1

    .line 11205
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->pos_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRemainDist()I
    .locals 1

    .line 11059
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->remainDist_:I

    return v0
.end method

.method public getRemainTime()J
    .locals 2

    .line 11341
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->remainTime_:J

    return-wide v0
.end method

.method public getSapaChargeCount()I
    .locals 1

    .line 11512
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaChargeCount_:I

    return v0
.end method

.method public getSapaChargeUsable()I
    .locals 1

    .line 11547
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaChargeUsable_:I

    return v0
.end method

.method public getSapaDetail()J
    .locals 2

    .line 11271
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaDetail_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 11720
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 11724
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->remainDist_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 11726
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11728
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->type_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 11730
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11732
    :cond_2
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->name_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 11734
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11736
    :cond_3
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->pos_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 11738
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->getPos()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11740
    :cond_4
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaDetail_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    const/4 v5, 0x5

    .line 11742
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11744
    :cond_5
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->payTip_:I

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 11746
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11748
    :cond_6
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->remainTime_:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_7

    const/4 v3, 0x7

    .line 11750
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11752
    :cond_7
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->energyConsume_:I

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    .line 11754
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11756
    :cond_8
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->servicePoiId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x9

    .line 11758
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->getServicePoiId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11760
    :cond_9
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->isCharge_:I

    if-eqz v1, :cond_a

    const/16 v2, 0xa

    .line 11762
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11764
    :cond_a
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaChargeCount_:I

    if-eqz v1, :cond_b

    const/16 v2, 0xb

    .line 11766
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11768
    :cond_b
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaChargeUsable_:I

    if-eqz v1, :cond_c

    const/16 v2, 0xc

    .line 11770
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11772
    :cond_c
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->buildingStatus_:I

    if-eqz v1, :cond_d

    const/16 v2, 0xd

    .line 11774
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11776
    :cond_d
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->children_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xe

    .line 11778
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->getChildren()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11780
    :cond_e
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->memoizedSerializedSize:I

    return v0
.end method

.method public getServicePoiId()Ljava/lang/String;
    .locals 1

    .line 11411
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->servicePoiId_:Ljava/lang/String;

    return-object v0
.end method

.method public getServicePoiIdBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 11422
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->servicePoiId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 11094
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->type_:I

    return v0
.end method

.method public hasPos()Z
    .locals 1

    .line 11195
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->pos_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11675
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->remainDist_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 11676
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11678
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->type_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 11679
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11681
    :cond_1
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->name_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 11682
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 11684
    :cond_2
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->pos_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 11685
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->getPos()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 11687
    :cond_3
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaDetail_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    .line 11688
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11690
    :cond_4
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->payTip_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 11691
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11693
    :cond_5
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->remainTime_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    const/4 v2, 0x7

    .line 11694
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11696
    :cond_6
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->energyConsume_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 11697
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11699
    :cond_7
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->servicePoiId_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    .line 11700
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->getServicePoiId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 11702
    :cond_8
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->isCharge_:I

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 11703
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11705
    :cond_9
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaChargeCount_:I

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 11706
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11708
    :cond_a
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->sapaChargeUsable_:I

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 11709
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11711
    :cond_b
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->buildingStatus_:I

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 11712
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11714
    :cond_c
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->children_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xe

    .line 11715
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->getChildren()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_d
    return-void
.end method
