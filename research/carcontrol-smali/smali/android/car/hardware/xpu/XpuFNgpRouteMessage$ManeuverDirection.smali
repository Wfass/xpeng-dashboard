.class public final enum Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;
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
    name = "ManeuverDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

.field public static final enum DEFAULT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

.field public static final DEFAULT_VALUE:I = 0x0

.field public static final enum PASS_ROUNDABOUT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

.field public static final PASS_ROUNDABOUT_VALUE:I = 0x5

.field public static final enum STRAIGHT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

.field public static final STRAIGHT_VALUE:I = 0x4

.field public static final enum TURN_BACK:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

.field public static final TURN_BACK_VALUE:I = 0x3

.field public static final enum TURN_LEFT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

.field public static final TURN_LEFT_VALUE:I = 0x1

.field public static final enum TURN_RIGHT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

.field public static final TURN_RIGHT_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 786
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->DEFAULT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    .line 794
    new-instance v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    const-string v3, "TURN_LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->TURN_LEFT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    .line 802
    new-instance v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    const-string v5, "TURN_RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->TURN_RIGHT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    .line 810
    new-instance v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    const-string v7, "TURN_BACK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->TURN_BACK:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    .line 818
    new-instance v7, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    const-string v9, "STRAIGHT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->STRAIGHT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    .line 826
    new-instance v9, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    const-string v11, "PASS_ROUNDABOUT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->PASS_ROUNDABOUT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    .line 827
    new-instance v11, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    const-string v13, "UNRECOGNIZED"

    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-direct {v11, v13, v14, v15}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    const/4 v13, 0x7

    new-array v13, v13, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 777
    sput-object v13, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    .line 909
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 918
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 919
    iput p3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;
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

    .line 899
    :cond_0
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->PASS_ROUNDABOUT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    return-object p0

    .line 898
    :cond_1
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->STRAIGHT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    return-object p0

    .line 897
    :cond_2
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->TURN_BACK:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    return-object p0

    .line 896
    :cond_3
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->TURN_RIGHT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    return-object p0

    .line 895
    :cond_4
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->TURN_LEFT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    return-object p0

    .line 894
    :cond_5
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->DEFAULT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;",
            ">;"
        }
    .end annotation

    .line 906
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 889
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;
    .locals 1

    .line 777
    const-class v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;
    .locals 1

    .line 777
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 881
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->value:I

    return v0
.end method
