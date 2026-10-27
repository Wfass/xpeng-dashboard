.class public final enum Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;
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
    name = "FNgpStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

.field public static final enum FNGP_STATUS_DRIVING:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

.field public static final enum FNGP_STATUS_DRIVING_END:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

.field public static final FNGP_STATUS_DRIVING_END_VALUE:I = 0x5

.field public static final FNGP_STATUS_DRIVING_VALUE:I = 0x3

.field public static final enum FNGP_STATUS_GRAY_WAY:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

.field public static final FNGP_STATUS_GRAY_WAY_VALUE:I = 0x4

.field public static final enum FNGP_STATUS_IN_RANGE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

.field public static final FNGP_STATUS_IN_RANGE_VALUE:I = 0x2

.field public static final enum FNGP_STATUS_NOT_AVAILABLE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

.field public static final FNGP_STATUS_NOT_AVAILABLE_VALUE:I = 0x0

.field public static final enum FNGP_STATUS_OUT_OF_RANGE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

.field public static final FNGP_STATUS_OUT_OF_RANGE_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 937
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    const-string v1, "FNGP_STATUS_NOT_AVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->FNGP_STATUS_NOT_AVAILABLE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    .line 945
    new-instance v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    const-string v3, "FNGP_STATUS_OUT_OF_RANGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->FNGP_STATUS_OUT_OF_RANGE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    .line 953
    new-instance v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    const-string v5, "FNGP_STATUS_IN_RANGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->FNGP_STATUS_IN_RANGE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    .line 961
    new-instance v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    const-string v7, "FNGP_STATUS_DRIVING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->FNGP_STATUS_DRIVING:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    .line 969
    new-instance v7, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    const-string v9, "FNGP_STATUS_GRAY_WAY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->FNGP_STATUS_GRAY_WAY:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    .line 977
    new-instance v9, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    const-string v11, "FNGP_STATUS_DRIVING_END"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->FNGP_STATUS_DRIVING_END:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    .line 978
    new-instance v11, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    const-string v13, "UNRECOGNIZED"

    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-direct {v11, v13, v14, v15}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    const/4 v13, 0x7

    new-array v13, v13, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 928
    sput-object v13, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    .line 1060
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1069
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1070
    iput p3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;
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

    .line 1050
    :cond_0
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->FNGP_STATUS_DRIVING_END:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    return-object p0

    .line 1049
    :cond_1
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->FNGP_STATUS_GRAY_WAY:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    return-object p0

    .line 1048
    :cond_2
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->FNGP_STATUS_DRIVING:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    return-object p0

    .line 1047
    :cond_3
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->FNGP_STATUS_IN_RANGE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    return-object p0

    .line 1046
    :cond_4
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->FNGP_STATUS_OUT_OF_RANGE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    return-object p0

    .line 1045
    :cond_5
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->FNGP_STATUS_NOT_AVAILABLE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;",
            ">;"
        }
    .end annotation

    .line 1057
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1040
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;
    .locals 1

    .line 928
    const-class v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;
    .locals 1

    .line 928
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1032
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->value:I

    return v0
.end method
