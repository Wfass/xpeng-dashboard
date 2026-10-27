.class public final enum Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;
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
    name = "FngpRouteSlotLeaveParkingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

.field public static final enum DEFAULT_PARKING_TYPE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

.field public static final DEFAULT_PARKING_TYPE_VALUE:I = 0x0

.field public static final enum LEAVE_VEHICLE_PARKING:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

.field public static final LEAVE_VEHICLE_PARKING_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1705
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

    const-string v1, "DEFAULT_PARKING_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;->DEFAULT_PARKING_TYPE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

    .line 1713
    new-instance v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

    const-string v3, "LEAVE_VEHICLE_PARKING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;->LEAVE_VEHICLE_PARKING:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

    .line 1714
    new-instance v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

    const-string v5, "UNRECOGNIZED"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 1696
    sput-object v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

    .line 1760
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1769
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1770
    iput p3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1750
    :cond_0
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;->LEAVE_VEHICLE_PARKING:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

    return-object p0

    .line 1749
    :cond_1
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;->DEFAULT_PARKING_TYPE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;",
            ">;"
        }
    .end annotation

    .line 1757
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1744
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;
    .locals 1

    .line 1696
    const-class v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;
    .locals 1

    .line 1696
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1736
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;->value:I

    return v0
.end method
