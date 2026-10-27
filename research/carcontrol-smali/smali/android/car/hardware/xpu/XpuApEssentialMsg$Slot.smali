.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Slot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotOrBuilder;"
    }
.end annotation


# static fields
.field public static final ATTRIBUTE_FIELD_NUMBER:I = 0x5

.field public static final B_FIELD_NUMBER:I = 0x1

.field public static final CHARGER_TYPE_FIELD_NUMBER:I = 0x9

.field public static final C_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

.field public static final D_FIELD_NUMBER:I = 0x3

.field public static final E_FIELD_NUMBER:I = 0x4

.field public static final HEIGHT_FIELD_NUMBER:I = 0xd

.field public static final ID_FIELD_NUMBER:I = 0x6

.field public static final ISFAVOR_FIELD_NUMBER:I = 0xf

.field public static final LOCATION_FIELD_NUMBER:I = 0x7

.field public static final MAP_SLOT_ID_FIELD_NUMBER:I = 0xe

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLOT_SHAPE_FIELD_NUMBER:I = 0x8

.field public static final SLOT_TYPE_FIELD_NUMBER:I = 0xa

.field public static final THETA_FIELD_NUMBER:I = 0xb

.field public static final WIDTH_FIELD_NUMBER:I = 0xc


# instance fields
.field private attribute_:I

.field private b_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

.field private c_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

.field private chargerType_:I

.field private d_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

.field private e_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

.field private height_:F

.field private id_:I

.field private isFavor_:I

.field private location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

.field private mapSlotId_:I

.field private slotShape_:I

.field private slotType_:I

.field private theta_:F

.field private width_:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4168
    new-instance v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    .line 4169
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2675
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 2676
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->attribute_:I

    .line 2677
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->id_:I

    .line 2678
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->slotShape_:I

    .line 2679
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->chargerType_:I

    .line 2680
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->slotType_:I

    const/4 v1, 0x0

    .line 2681
    iput v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->theta_:F

    .line 2682
    iput v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->width_:F

    .line 2683
    iput v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->height_:F

    .line 2684
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->mapSlotId_:I

    .line 2685
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->isFavor_:I

    return-void
.end method

.method static synthetic access$5200()Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;
    .locals 1

    .line 2670
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    return-object v0
.end method

.method static synthetic access$5300(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->setB(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-void
.end method

.method static synthetic access$5400(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->setB(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V

    return-void
.end method

.method static synthetic access$5500(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->mergeB(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-void
.end method

.method static synthetic access$5600(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 0

    .line 2670
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->clearB()V

    return-void
.end method

.method static synthetic access$5700(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->setC(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-void
.end method

.method static synthetic access$5800(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->setC(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V

    return-void
.end method

.method static synthetic access$5900(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->mergeC(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-void
.end method

.method static synthetic access$6000(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 0

    .line 2670
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->clearC()V

    return-void
.end method

.method static synthetic access$6100(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->setD(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-void
.end method

.method static synthetic access$6200(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->setD(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V

    return-void
.end method

.method static synthetic access$6300(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->mergeD(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-void
.end method

.method static synthetic access$6400(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 0

    .line 2670
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->clearD()V

    return-void
.end method

.method static synthetic access$6500(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->setE(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-void
.end method

.method static synthetic access$6600(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->setE(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V

    return-void
.end method

.method static synthetic access$6700(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->mergeE(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-void
.end method

.method static synthetic access$6800(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 0

    .line 2670
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->clearE()V

    return-void
.end method

.method static synthetic access$6900(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;I)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->setAttribute(I)V

    return-void
.end method

.method static synthetic access$7000(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 0

    .line 2670
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->clearAttribute()V

    return-void
.end method

.method static synthetic access$7100(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;I)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->setId(I)V

    return-void
.end method

.method static synthetic access$7200(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 0

    .line 2670
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->clearId()V

    return-void
.end method

.method static synthetic access$7300(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->setLocation(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-void
.end method

.method static synthetic access$7400(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->setLocation(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V

    return-void
.end method

.method static synthetic access$7500(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->mergeLocation(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-void
.end method

.method static synthetic access$7600(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 0

    .line 2670
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->clearLocation()V

    return-void
.end method

.method static synthetic access$7700(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;I)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->setSlotShape(I)V

    return-void
.end method

.method static synthetic access$7800(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 0

    .line 2670
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->clearSlotShape()V

    return-void
.end method

.method static synthetic access$7900(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;I)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->setChargerType(I)V

    return-void
.end method

.method static synthetic access$8000(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 0

    .line 2670
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->clearChargerType()V

    return-void
.end method

.method static synthetic access$8100(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;I)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->setSlotType(I)V

    return-void
.end method

.method static synthetic access$8200(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 0

    .line 2670
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->clearSlotType()V

    return-void
.end method

.method static synthetic access$8300(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;F)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->setTheta(F)V

    return-void
.end method

.method static synthetic access$8400(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 0

    .line 2670
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->clearTheta()V

    return-void
.end method

.method static synthetic access$8500(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;F)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->setWidth(F)V

    return-void
.end method

.method static synthetic access$8600(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 0

    .line 2670
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->clearWidth()V

    return-void
.end method

.method static synthetic access$8700(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;F)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->setHeight(F)V

    return-void
.end method

.method static synthetic access$8800(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 0

    .line 2670
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->clearHeight()V

    return-void
.end method

.method static synthetic access$8900(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;I)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->setMapSlotId(I)V

    return-void
.end method

.method static synthetic access$9000(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 0

    .line 2670
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->clearMapSlotId()V

    return-void
.end method

.method static synthetic access$9100(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;I)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->setIsFavor(I)V

    return-void
.end method

.method static synthetic access$9200(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 0

    .line 2670
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->clearIsFavor()V

    return-void
.end method

.method private clearAttribute()V
    .locals 1

    const/4 v0, 0x0

    .line 2939
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->attribute_:I

    return-void
.end method

.method private clearB()V
    .locals 1

    const/4 v0, 0x0

    .line 2759
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->b_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private clearC()V
    .locals 1

    const/4 v0, 0x0

    .line 2811
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->c_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private clearChargerType()V
    .locals 1

    const/4 v0, 0x0

    .line 3084
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->chargerType_:I

    return-void
.end method

.method private clearD()V
    .locals 1

    const/4 v0, 0x0

    .line 2863
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->d_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private clearE()V
    .locals 1

    const/4 v0, 0x0

    .line 2915
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->e_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private clearHeight()V
    .locals 1

    const/4 v0, 0x0

    .line 3188
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->height_:F

    return-void
.end method

.method private clearId()V
    .locals 1

    const/4 v0, 0x0

    .line 2974
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->id_:I

    return-void
.end method

.method private clearIsFavor()V
    .locals 1

    const/4 v0, 0x0

    .line 3234
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->isFavor_:I

    return-void
.end method

.method private clearLocation()V
    .locals 1

    const/4 v0, 0x0

    .line 3025
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private clearMapSlotId()V
    .locals 1

    const/4 v0, 0x0

    .line 3211
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->mapSlotId_:I

    return-void
.end method

.method private clearSlotShape()V
    .locals 1

    const/4 v0, 0x0

    .line 3049
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->slotShape_:I

    return-void
.end method

.method private clearSlotType()V
    .locals 1

    const/4 v0, 0x0

    .line 3119
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->slotType_:I

    return-void
.end method

.method private clearTheta()V
    .locals 1

    const/4 v0, 0x0

    .line 3142
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->theta_:F

    return-void
.end method

.method private clearWidth()V
    .locals 1

    const/4 v0, 0x0

    .line 3165
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->width_:F

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;
    .locals 1

    .line 4173
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    return-object v0
.end method

.method private mergeB(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 2

    .line 2743
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->b_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_0

    .line 2744
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2745
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->b_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    .line 2746
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->b_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    goto :goto_0

    .line 2748
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->b_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    :goto_0
    return-void
.end method

.method private mergeC(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 2

    .line 2799
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->c_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_0

    .line 2800
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2801
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->c_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    .line 2802
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->c_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    goto :goto_0

    .line 2804
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->c_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    :goto_0
    return-void
.end method

.method private mergeD(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 2

    .line 2851
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->d_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_0

    .line 2852
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2853
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->d_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    .line 2854
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->d_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    goto :goto_0

    .line 2856
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->d_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    :goto_0
    return-void
.end method

.method private mergeE(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 2

    .line 2903
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->e_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_0

    .line 2904
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2905
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->e_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    .line 2906
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->e_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    goto :goto_0

    .line 2908
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->e_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    :goto_0
    return-void
.end method

.method private mergeLocation(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 2

    .line 3013
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_0

    .line 3014
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3015
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    .line 3016
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    goto :goto_0

    .line 3018
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;
    .locals 1

    .line 3417
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;
    .locals 1

    .line 3420
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3394
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3400
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3358
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3365
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3405
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3412
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3382
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3389
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3370
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3377
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;",
            ">;"
        }
    .end annotation

    .line 4179
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAttribute(I)V
    .locals 0

    .line 2932
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->attribute_:I

    return-void
.end method

.method private setB(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V
    .locals 0

    .line 2732
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->b_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private setB(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 2718
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2720
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->b_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private setC(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V
    .locals 0

    .line 2792
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->c_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private setC(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 2782
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2784
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->c_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private setChargerType(I)V
    .locals 0

    .line 3073
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->chargerType_:I

    return-void
.end method

.method private setD(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V
    .locals 0

    .line 2844
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->d_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private setD(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 2834
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2836
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->d_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private setE(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V
    .locals 0

    .line 2896
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->e_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private setE(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 2886
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2888
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->e_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private setHeight(F)V
    .locals 0

    .line 3181
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->height_:F

    return-void
.end method

.method private setId(I)V
    .locals 0

    .line 2963
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->id_:I

    return-void
.end method

.method private setIsFavor(I)V
    .locals 0

    .line 3227
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->isFavor_:I

    return-void
.end method

.method private setLocation(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V
    .locals 0

    .line 3006
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private setLocation(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 2996
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2998
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private setMapSlotId(I)V
    .locals 0

    .line 3204
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->mapSlotId_:I

    return-void
.end method

.method private setSlotShape(I)V
    .locals 0

    .line 3042
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->slotShape_:I

    return-void
.end method

.method private setSlotType(I)V
    .locals 0

    .line 3108
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->slotType_:I

    return-void
.end method

.method private setTheta(F)V
    .locals 0

    .line 3135
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->theta_:F

    return-void
.end method

.method private setWidth(F)V
    .locals 0

    .line 3158
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->width_:F

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 3957
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 4161
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 4152
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    monitor-enter p1

    .line 4153
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 4154
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 4156
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 4158
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 4004
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 4006
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_8

    .line 4011
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 4017
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_8

    .line 4134
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->isFavor_:I

    goto :goto_1

    .line 4129
    :sswitch_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->mapSlotId_:I

    goto :goto_1

    .line 4124
    :sswitch_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->height_:F

    goto :goto_1

    .line 4119
    :sswitch_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->width_:F

    goto :goto_1

    .line 4114
    :sswitch_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->theta_:F

    goto :goto_1

    .line 4109
    :sswitch_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->slotType_:I

    goto :goto_1

    .line 4104
    :sswitch_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->chargerType_:I

    goto :goto_1

    .line 4099
    :sswitch_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->slotShape_:I

    goto :goto_1

    .line 4086
    :sswitch_8
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz p1, :cond_3

    .line 4087
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    goto :goto_2

    :cond_3
    move-object p1, v0

    .line 4089
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz p1, :cond_2

    .line 4091
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 4092
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    goto :goto_1

    .line 4081
    :sswitch_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->id_:I

    goto :goto_1

    .line 4076
    :sswitch_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->attribute_:I

    goto :goto_1

    .line 4063
    :sswitch_b
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->e_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz p1, :cond_4

    .line 4064
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    goto :goto_3

    :cond_4
    move-object p1, v0

    .line 4066
    :goto_3
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->e_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz p1, :cond_2

    .line 4068
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 4069
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->e_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    goto/16 :goto_1

    .line 4050
    :sswitch_c
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->d_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz p1, :cond_5

    .line 4051
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    goto :goto_4

    :cond_5
    move-object p1, v0

    .line 4053
    :goto_4
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->d_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz p1, :cond_2

    .line 4055
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 4056
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->d_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    goto/16 :goto_1

    .line 4037
    :sswitch_d
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->c_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz p1, :cond_6

    .line 4038
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    goto :goto_5

    :cond_6
    move-object p1, v0

    .line 4040
    :goto_5
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->c_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz p1, :cond_2

    .line 4042
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 4043
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->c_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    goto/16 :goto_1

    .line 4024
    :sswitch_e
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->b_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz p1, :cond_7

    .line 4025
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    goto :goto_6

    :cond_7
    move-object p1, v0

    .line 4027
    :goto_6
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->b_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz p1, :cond_2

    .line 4029
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 4030
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->b_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_7
    :sswitch_f
    move v1, v2

    goto/16 :goto_1

    :goto_8
    if-nez p1, :cond_2

    goto :goto_7

    :catchall_1
    move-exception p1

    goto :goto_9

    :catch_0
    move-exception p1

    .line 4142
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 4144
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 4140
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4145
    :goto_9
    throw p1

    .line 4149
    :cond_8
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    return-object p1

    .line 3971
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 3972
    check-cast p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    .line 3973
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->b_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->b_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->b_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    .line 3974
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->c_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->c_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->c_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    .line 3975
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->d_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->d_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->d_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    .line 3976
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->e_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->e_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->e_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    .line 3977
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->attribute_:I

    if-eqz p1, :cond_9

    move v0, v2

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->attribute_:I

    if-eqz v3, :cond_a

    move v4, v2

    goto :goto_b

    :cond_a
    move v4, v1

    :goto_b
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->attribute_:I

    .line 3979
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->id_:I

    if-eqz p1, :cond_b

    move v0, v2

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->id_:I

    if-eqz v3, :cond_c

    move v4, v2

    goto :goto_d

    :cond_c
    move v4, v1

    :goto_d
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->id_:I

    .line 3981
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    .line 3982
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->slotShape_:I

    if-eqz p1, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->slotShape_:I

    if-eqz v3, :cond_e

    move v4, v2

    goto :goto_f

    :cond_e
    move v4, v1

    :goto_f
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->slotShape_:I

    .line 3984
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->chargerType_:I

    if-eqz p1, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->chargerType_:I

    if-eqz v3, :cond_10

    move v4, v2

    goto :goto_11

    :cond_10
    move v4, v1

    :goto_11
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->chargerType_:I

    .line 3986
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->slotType_:I

    if-eqz p1, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->slotType_:I

    if-eqz v3, :cond_12

    move v4, v2

    goto :goto_13

    :cond_12
    move v4, v1

    :goto_13
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->slotType_:I

    .line 3988
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->theta_:F

    const/4 v0, 0x0

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_13

    move v3, v2

    goto :goto_14

    :cond_13
    move v3, v1

    :goto_14
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->theta_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_14

    move v5, v2

    goto :goto_15

    :cond_14
    move v5, v1

    :goto_15
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->theta_:F

    .line 3990
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->width_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_15

    move v3, v2

    goto :goto_16

    :cond_15
    move v3, v1

    :goto_16
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->width_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_16

    move v5, v2

    goto :goto_17

    :cond_16
    move v5, v1

    :goto_17
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->width_:F

    .line 3992
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->height_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_17

    move v3, v2

    goto :goto_18

    :cond_17
    move v3, v1

    :goto_18
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->height_:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_18

    move v0, v2

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    invoke-interface {p2, v3, p1, v0, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->height_:F

    .line 3994
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->mapSlotId_:I

    if-eqz p1, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->mapSlotId_:I

    if-eqz v3, :cond_1a

    move v4, v2

    goto :goto_1b

    :cond_1a
    move v4, v1

    :goto_1b
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->mapSlotId_:I

    .line 3996
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->isFavor_:I

    if-eqz p1, :cond_1b

    move v0, v2

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    iget p3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->isFavor_:I

    if-eqz p3, :cond_1c

    move v1, v2

    :cond_1c
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->isFavor_:I

    .line 3998
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 3968
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;-><init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 3962
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    return-object p1

    .line 3959
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;-><init>()V

    return-object p1

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
        0x0 -> :sswitch_f
        0xa -> :sswitch_e
        0x12 -> :sswitch_d
        0x1a -> :sswitch_c
        0x22 -> :sswitch_b
        0x28 -> :sswitch_a
        0x30 -> :sswitch_9
        0x3a -> :sswitch_8
        0x40 -> :sswitch_7
        0x48 -> :sswitch_6
        0x50 -> :sswitch_5
        0x5d -> :sswitch_4
        0x65 -> :sswitch_3
        0x6d -> :sswitch_2
        0x70 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAttribute()I
    .locals 1

    .line 2925
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->attribute_:I

    return v0
.end method

.method public getB()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1

    .line 2707
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->b_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getC()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1

    .line 2775
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->c_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getChargerType()I
    .locals 1

    .line 3062
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->chargerType_:I

    return v0
.end method

.method public getD()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1

    .line 2827
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->d_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getE()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1

    .line 2879
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->e_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 3174
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->height_:F

    return v0
.end method

.method public getId()I
    .locals 1

    .line 2952
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->id_:I

    return v0
.end method

.method public getIsFavor()I
    .locals 1

    .line 3220
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->isFavor_:I

    return v0
.end method

.method public getLocation()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1

    .line 2989
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMapSlotId()I
    .locals 1

    .line 3197
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->mapSlotId_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 3287
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3291
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->b_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3293
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->getB()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3295
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->c_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 3297
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->getC()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3299
    :cond_2
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->d_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 3301
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->getD()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3303
    :cond_3
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->e_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 3305
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->getE()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3307
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->attribute_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 3309
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3311
    :cond_5
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->id_:I

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 3313
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3315
    :cond_6
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 3317
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->getLocation()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3319
    :cond_7
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->slotShape_:I

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    .line 3321
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3323
    :cond_8
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->chargerType_:I

    if-eqz v1, :cond_9

    const/16 v2, 0x9

    .line 3325
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3327
    :cond_9
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->slotType_:I

    if-eqz v1, :cond_a

    const/16 v2, 0xa

    .line 3329
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3331
    :cond_a
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->theta_:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_b

    const/16 v3, 0xb

    .line 3333
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3335
    :cond_b
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->width_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_c

    const/16 v3, 0xc

    .line 3337
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3339
    :cond_c
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->height_:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_d

    const/16 v2, 0xd

    .line 3341
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3343
    :cond_d
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->mapSlotId_:I

    if-eqz v1, :cond_e

    const/16 v2, 0xe

    .line 3345
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3347
    :cond_e
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->isFavor_:I

    if-eqz v1, :cond_f

    const/16 v2, 0xf

    .line 3349
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3351
    :cond_f
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->memoizedSerializedSize:I

    return v0
.end method

.method public getSlotShape()I
    .locals 1

    .line 3035
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->slotShape_:I

    return v0
.end method

.method public getSlotType()I
    .locals 1

    .line 3097
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->slotType_:I

    return v0
.end method

.method public getTheta()F
    .locals 1

    .line 3128
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->theta_:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 3151
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->width_:F

    return v0
.end method

.method public hasB()Z
    .locals 1

    .line 2697
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->b_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasC()Z
    .locals 1

    .line 2769
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->c_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasD()Z
    .locals 1

    .line 2821
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->d_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasE()Z
    .locals 1

    .line 2873
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->e_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLocation()Z
    .locals 1

    .line 2983
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3239
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->b_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3240
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->getB()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 3242
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->c_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 3243
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->getC()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 3245
    :cond_1
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->d_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 3246
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->getD()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 3248
    :cond_2
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->e_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 3249
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->getE()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 3251
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->attribute_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 3252
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3254
    :cond_4
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->id_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 3255
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3257
    :cond_5
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 3258
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->getLocation()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 3260
    :cond_6
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->slotShape_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 3261
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3263
    :cond_7
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->chargerType_:I

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 3264
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3266
    :cond_8
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->slotType_:I

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 3267
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3269
    :cond_9
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->theta_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_a

    const/16 v2, 0xb

    .line 3270
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 3272
    :cond_a
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->width_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_b

    const/16 v2, 0xc

    .line 3273
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 3275
    :cond_b
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->height_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_c

    const/16 v1, 0xd

    .line 3276
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 3278
    :cond_c
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->mapSlotId_:I

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    .line 3279
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3281
    :cond_d
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->isFavor_:I

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 3282
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_e
    return-void
.end method
