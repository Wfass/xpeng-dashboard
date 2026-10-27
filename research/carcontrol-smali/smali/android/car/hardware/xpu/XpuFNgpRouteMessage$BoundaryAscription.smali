.class public final enum Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;
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
    name = "BoundaryAscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

.field public static final enum BOUNDARY_ASCRIPTION_UNKNOWN:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

.field public static final BOUNDARY_ASCRIPTION_UNKNOWN_VALUE:I = 0x0

.field public static final enum LANE_BOUNDARY:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

.field public static final LANE_BOUNDARY_VALUE:I = 0x1

.field public static final enum ROAD_AND_LANE_BOUNDARY:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

.field public static final ROAD_AND_LANE_BOUNDARY_VALUE:I = 0x3

.field public static final enum ROAD_BOUNDARY:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

.field public static final ROAD_BOUNDARY_VALUE:I = 0x2

.field public static final enum ROAD_LEFT_SIDE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

.field public static final ROAD_LEFT_SIDE_VALUE:I = 0x4

.field public static final enum ROAD_RIGHT_SIDE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

.field public static final ROAD_RIGHT_SIDE_VALUE:I = 0x5

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 2522
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    const-string v1, "BOUNDARY_ASCRIPTION_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->BOUNDARY_ASCRIPTION_UNKNOWN:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    .line 2526
    new-instance v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    const-string v3, "LANE_BOUNDARY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->LANE_BOUNDARY:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    .line 2530
    new-instance v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    const-string v5, "ROAD_BOUNDARY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->ROAD_BOUNDARY:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    .line 2534
    new-instance v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    const-string v7, "ROAD_AND_LANE_BOUNDARY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->ROAD_AND_LANE_BOUNDARY:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    .line 2538
    new-instance v7, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    const-string v9, "ROAD_LEFT_SIDE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->ROAD_LEFT_SIDE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    .line 2542
    new-instance v9, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    const-string v11, "ROAD_RIGHT_SIDE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->ROAD_RIGHT_SIDE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    .line 2543
    new-instance v11, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    const-string v13, "UNRECOGNIZED"

    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-direct {v11, v13, v14, v15}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    const/4 v13, 0x7

    new-array v13, v13, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 2517
    sput-object v13, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    .line 2601
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2610
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2611
    iput p3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2591
    :cond_0
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->ROAD_RIGHT_SIDE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    return-object p0

    .line 2590
    :cond_1
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->ROAD_LEFT_SIDE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    return-object p0

    .line 2589
    :cond_2
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->ROAD_AND_LANE_BOUNDARY:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    return-object p0

    .line 2588
    :cond_3
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->ROAD_BOUNDARY:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    return-object p0

    .line 2587
    :cond_4
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->LANE_BOUNDARY:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    return-object p0

    .line 2586
    :cond_5
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->BOUNDARY_ASCRIPTION_UNKNOWN:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;",
            ">;"
        }
    .end annotation

    .line 2598
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2581
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;
    .locals 1

    .line 2517
    const-class v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;
    .locals 1

    .line 2517
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 2573
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->value:I

    return v0
.end method
