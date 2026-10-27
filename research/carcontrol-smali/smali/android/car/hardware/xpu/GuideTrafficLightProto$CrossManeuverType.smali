.class public final enum Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;
.super Ljava/lang/Enum;
.source "GuideTrafficLightProto.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/GuideTrafficLightProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CrossManeuverType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

.field public static final enum CROSS_MANEUVER_TYPE_STRAIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

.field public static final CROSS_MANEUVER_TYPE_STRAIGHT_VALUE:I = 0x8

.field public static final enum CROSS_MANEUVER_TYPE_TURN_LEFT:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

.field public static final CROSS_MANEUVER_TYPE_TURN_LEFT_VALUE:I = 0x1

.field public static final enum CROSS_MANEUVER_TYPE_TURN_RIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

.field public static final CROSS_MANEUVER_TYPE_TURN_RIGHT_VALUE:I = 0x2

.field public static final enum CROSS_MANEUVER_TYPE_UNKNOWN:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

.field public static final CROSS_MANEUVER_TYPE_UNKNOWN_VALUE:I = 0x0

.field public static final enum CROSS_MANEUVER_TYPE_UTURN:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

.field public static final CROSS_MANEUVER_TYPE_UTURN_VALUE:I = 0x7

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 19
    new-instance v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    const-string v1, "CROSS_MANEUVER_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->CROSS_MANEUVER_TYPE_UNKNOWN:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    .line 23
    new-instance v1, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    const-string v3, "CROSS_MANEUVER_TYPE_TURN_LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->CROSS_MANEUVER_TYPE_TURN_LEFT:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    .line 27
    new-instance v3, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    const-string v5, "CROSS_MANEUVER_TYPE_TURN_RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->CROSS_MANEUVER_TYPE_TURN_RIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    .line 31
    new-instance v5, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    const-string v7, "CROSS_MANEUVER_TYPE_UTURN"

    const/4 v8, 0x3

    const/4 v9, 0x7

    invoke-direct {v5, v7, v8, v9}, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->CROSS_MANEUVER_TYPE_UTURN:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    .line 35
    new-instance v7, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    const-string v9, "CROSS_MANEUVER_TYPE_STRAIGHT"

    const/4 v10, 0x4

    const/16 v11, 0x8

    invoke-direct {v7, v9, v10, v11}, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->CROSS_MANEUVER_TYPE_STRAIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    .line 36
    new-instance v9, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->UNRECOGNIZED:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    const/4 v11, 0x6

    new-array v11, v11, [Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 14
    sput-object v11, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->$VALUES:[Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    .line 89
    new-instance v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput p3, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 79
    :cond_0
    sget-object p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->CROSS_MANEUVER_TYPE_STRAIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    return-object p0

    .line 78
    :cond_1
    sget-object p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->CROSS_MANEUVER_TYPE_UTURN:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    return-object p0

    .line 77
    :cond_2
    sget-object p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->CROSS_MANEUVER_TYPE_TURN_RIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    return-object p0

    .line 76
    :cond_3
    sget-object p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->CROSS_MANEUVER_TYPE_TURN_LEFT:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    return-object p0

    .line 75
    :cond_4
    sget-object p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->CROSS_MANEUVER_TYPE_UNKNOWN:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;",
            ">;"
        }
    .end annotation

    .line 86
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-static {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->forNumber(I)Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;
    .locals 1

    .line 14
    const-class v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;
    .locals 1

    .line 14
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->$VALUES:[Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 62
    iget v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->value:I

    return v0
.end method
