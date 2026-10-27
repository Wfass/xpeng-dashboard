.class public final enum Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;
.super Ljava/lang/Enum;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EgoUndergroundParkingLotState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

.field public static final enum IN_UNDERGROUND_PARKING_LOT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

.field public static final IN_UNDERGROUND_PARKING_LOT_VALUE:I = 0x1

.field public static final enum OUT_UNDERGROUND_PARKING_LOT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

.field public static final OUT_UNDERGROUND_PARKING_LOT_VALUE:I = 0x2

.field public static final enum UNKNOWN_UNDERGROUND_PARKING_LOT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

.field public static final UNKNOWN_UNDERGROUND_PARKING_LOT_VALUE:I

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 2633
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    const-string v1, "UNKNOWN_UNDERGROUND_PARKING_LOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;->UNKNOWN_UNDERGROUND_PARKING_LOT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    .line 2641
    new-instance v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    const-string v3, "IN_UNDERGROUND_PARKING_LOT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;->IN_UNDERGROUND_PARKING_LOT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    .line 2649
    new-instance v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    const-string v5, "OUT_UNDERGROUND_PARKING_LOT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;->OUT_UNDERGROUND_PARKING_LOT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    .line 2650
    new-instance v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    const-string v7, "UNRECOGNIZED"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2624
    sput-object v7, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    .line 2705
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2714
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2715
    iput p3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2695
    :cond_0
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;->OUT_UNDERGROUND_PARKING_LOT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    return-object p0

    .line 2694
    :cond_1
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;->IN_UNDERGROUND_PARKING_LOT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    return-object p0

    .line 2693
    :cond_2
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;->UNKNOWN_UNDERGROUND_PARKING_LOT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;",
            ">;"
        }
    .end annotation

    .line 2702
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2688
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;
    .locals 1

    .line 2624
    const-class v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;
    .locals 1

    .line 2624
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 2680
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;->value:I

    return v0
.end method
