.class public final enum Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;
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
    name = "FngpRouteSlotPreferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

.field public static final enum DEFAULT_PARKING_PREFER:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

.field public static final DEFAULT_PARKING_PREFER_VALUE:I = 0x0

.field public static final enum LEFT_PREFER:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

.field public static final LEFT_PREFER_VALUE:I = 0x2

.field public static final enum MID_PREFER:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

.field public static final MID_PREFER_VALUE:I = 0x1

.field public static final enum RIGHT_PREFER:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

.field public static final RIGHT_PREFER_VALUE:I = 0x3

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1588
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    const-string v1, "DEFAULT_PARKING_PREFER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->DEFAULT_PARKING_PREFER:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    .line 1596
    new-instance v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    const-string v3, "MID_PREFER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->MID_PREFER:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    .line 1604
    new-instance v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    const-string v5, "LEFT_PREFER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->LEFT_PREFER:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    .line 1612
    new-instance v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    const-string v7, "RIGHT_PREFER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->RIGHT_PREFER:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    .line 1613
    new-instance v7, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    const-string v9, "UNRECOGNIZED"

    const/4 v10, 0x4

    const/4 v11, -0x1

    invoke-direct {v7, v9, v10, v11}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    const/4 v9, 0x5

    new-array v9, v9, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 1583
    sput-object v9, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    .line 1673
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1682
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1683
    iput p3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1663
    :cond_0
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->RIGHT_PREFER:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    return-object p0

    .line 1662
    :cond_1
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->LEFT_PREFER:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    return-object p0

    .line 1661
    :cond_2
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->MID_PREFER:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    return-object p0

    .line 1660
    :cond_3
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->DEFAULT_PARKING_PREFER:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;",
            ">;"
        }
    .end annotation

    .line 1670
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1655
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;
    .locals 1

    .line 1583
    const-class v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;
    .locals 1

    .line 1583
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1647
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->value:I

    return v0
.end method
