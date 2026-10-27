.class public final enum Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;
.super Ljava/lang/Enum;
.source "XpuProtoMessage.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LandmarkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum kDoorway:Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

.field public static final kDoorway_VALUE:I = 0x2

.field public static final enum kSlot:Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

.field public static final kSlot_VALUE:I = 0x1

.field public static final enum kUnkonwnLandmarkType:Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

.field public static final kUnkonwnLandmarkType_VALUE:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 527
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

    const-string v1, "kUnkonwnLandmarkType"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;->kUnkonwnLandmarkType:Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

    .line 531
    new-instance v1, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

    const-string v3, "kSlot"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;->kSlot:Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

    .line 535
    new-instance v3, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

    const-string v5, "kDoorway"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;->kDoorway:Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

    .line 536
    new-instance v5, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

    const-string v7, "UNRECOGNIZED"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 522
    sput-object v7, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;->$VALUES:[Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

    .line 579
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 588
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 589
    iput p3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 569
    :cond_0
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;->kDoorway:Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

    return-object p0

    .line 568
    :cond_1
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;->kSlot:Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

    return-object p0

    .line 567
    :cond_2
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;->kUnkonwnLandmarkType:Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;",
            ">;"
        }
    .end annotation

    .line 576
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 562
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;->forNumber(I)Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;
    .locals 1

    .line 522
    const-class v0, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;
    .locals 1

    .line 522
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;->$VALUES:[Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 554
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;->value:I

    return v0
.end method
