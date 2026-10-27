.class public final enum Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;
.super Ljava/lang/Enum;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RouteType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

.field public static final enum RouteTypeAvoid:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

.field public static final RouteTypeAvoid_VALUE:I = 0xf

.field public static final enum RouteTypeChangeJnyPnt:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

.field public static final RouteTypeChangeJnyPnt_VALUE:I = 0x9

.field public static final enum RouteTypeChangeStratege:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

.field public static final RouteTypeChangeStratege_VALUE:I = 0x3

.field public static final enum RouteTypeCommon:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

.field public static final RouteTypeCommon_VALUE:I = 0x1

.field public static final enum RouteTypeDamagedRoad:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

.field public static final RouteTypeDamagedRoad_VALUE:I = 0x7

.field public static final enum RouteTypeDispatch:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

.field public static final RouteTypeDispatch_VALUE:I = 0x10

.field public static final enum RouteTypeLimitForbid:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

.field public static final enum RouteTypeLimitForbidOffLine:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

.field public static final RouteTypeLimitForbidOffLine_VALUE:I = 0xd

.field public static final RouteTypeLimitForbid_VALUE:I = 0xb

.field public static final enum RouteTypeLimitLine:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

.field public static final RouteTypeLimitLine_VALUE:I = 0x6

.field public static final enum RouteTypeManualRefresh:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

.field public static final RouteTypeManualRefresh_VALUE:I = 0xc

.field public static final enum RouteTypeMutiRouteRequest:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

.field public static final RouteTypeMutiRouteRequest_VALUE:I = 0xe

.field public static final enum RouteTypeParallelRoad:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

.field public static final RouteTypeParallelRoad_VALUE:I = 0x4

.field public static final enum RouteTypePressure:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

.field public static final RouteTypePressure_VALUE:I = 0x8

.field public static final enum RouteTypeSwitchMode:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

.field public static final RouteTypeSwitchMode_VALUE:I = 0x15

.field public static final enum RouteTypeTMC:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

.field public static final RouteTypeTMC_VALUE:I = 0x5

.field public static final enum RouteTypeUnknown:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

.field public static final RouteTypeUnknown_VALUE:I = 0x0

.field public static final enum RouteTypeUpdateCityData:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

.field public static final RouteTypeUpdateCityData_VALUE:I = 0xa

.field public static final enum RouteTypeVoiceAddViaPoint:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

.field public static final RouteTypeVoiceAddViaPoint_VALUE:I = 0x17

.field public static final enum RouteTypeVoiceChangeDest:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

.field public static final RouteTypeVoiceChangeDest_VALUE:I = 0x11

.field public static final enum RouteTypeYaw:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

.field public static final RouteTypeYaw_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 138
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const-string v1, "RouteTypeUnknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeUnknown:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    .line 146
    new-instance v1, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const-string v3, "RouteTypeCommon"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeCommon:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    .line 154
    new-instance v3, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const-string v5, "RouteTypeYaw"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeYaw:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    .line 162
    new-instance v5, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const-string v7, "RouteTypeChangeStratege"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeChangeStratege:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    .line 170
    new-instance v7, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const-string v9, "RouteTypeParallelRoad"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeParallelRoad:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    .line 178
    new-instance v9, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const-string v11, "RouteTypeTMC"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeTMC:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    .line 186
    new-instance v11, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const-string v13, "RouteTypeLimitLine"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeLimitLine:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    .line 194
    new-instance v13, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const-string v15, "RouteTypeDamagedRoad"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeDamagedRoad:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    .line 202
    new-instance v15, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const-string v14, "RouteTypePressure"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypePressure:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    .line 210
    new-instance v14, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const-string v12, "RouteTypeChangeJnyPnt"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeChangeJnyPnt:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    .line 218
    new-instance v12, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const-string v10, "RouteTypeUpdateCityData"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeUpdateCityData:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    .line 226
    new-instance v10, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const-string v8, "RouteTypeLimitForbid"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeLimitForbid:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    .line 234
    new-instance v8, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const-string v6, "RouteTypeManualRefresh"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeManualRefresh:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    .line 242
    new-instance v6, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const-string v4, "RouteTypeLimitForbidOffLine"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeLimitForbidOffLine:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    .line 250
    new-instance v4, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const-string v2, "RouteTypeMutiRouteRequest"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeMutiRouteRequest:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    .line 258
    new-instance v2, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const-string v6, "RouteTypeAvoid"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeAvoid:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    .line 266
    new-instance v6, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const-string v4, "RouteTypeDispatch"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeDispatch:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    .line 274
    new-instance v4, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const-string v2, "RouteTypeVoiceChangeDest"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeVoiceChangeDest:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    .line 282
    new-instance v2, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const-string v6, "RouteTypeSwitchMode"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    move-object/from16 v21, v8

    const/16 v8, 0x15

    invoke-direct {v2, v6, v4, v8}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeSwitchMode:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    .line 290
    new-instance v6, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const-string v4, "RouteTypeVoiceAddViaPoint"

    const/16 v8, 0x13

    move-object/from16 v22, v2

    const/16 v2, 0x17

    invoke-direct {v6, v4, v8, v2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeVoiceAddViaPoint:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    .line 291
    new-instance v2, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const-string v4, "UNRECOGNIZED"

    const/16 v8, 0x14

    move-object/from16 v23, v6

    const/4 v6, -0x1

    invoke-direct {v2, v4, v8, v6}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const/16 v4, 0x15

    new-array v4, v4, [Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v21, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    aput-object v2, v4, v8

    .line 129
    sput-object v4, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->$VALUES:[Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    .line 499
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 508
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 509
    iput p3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;
    .locals 1

    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 487
    :pswitch_0
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeVoiceChangeDest:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    return-object p0

    .line 486
    :pswitch_1
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeDispatch:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    return-object p0

    .line 485
    :pswitch_2
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeAvoid:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    return-object p0

    .line 484
    :pswitch_3
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeMutiRouteRequest:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    return-object p0

    .line 483
    :pswitch_4
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeLimitForbidOffLine:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    return-object p0

    .line 482
    :pswitch_5
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeManualRefresh:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    return-object p0

    .line 481
    :pswitch_6
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeLimitForbid:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    return-object p0

    .line 480
    :pswitch_7
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeUpdateCityData:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    return-object p0

    .line 479
    :pswitch_8
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeChangeJnyPnt:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    return-object p0

    .line 478
    :pswitch_9
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypePressure:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    return-object p0

    .line 477
    :pswitch_a
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeDamagedRoad:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    return-object p0

    .line 476
    :pswitch_b
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeLimitLine:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    return-object p0

    .line 475
    :pswitch_c
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeTMC:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    return-object p0

    .line 474
    :pswitch_d
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeParallelRoad:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    return-object p0

    .line 473
    :pswitch_e
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeChangeStratege:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    return-object p0

    .line 472
    :pswitch_f
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeYaw:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    return-object p0

    .line 471
    :pswitch_10
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeCommon:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    return-object p0

    .line 470
    :pswitch_11
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeUnknown:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    return-object p0

    .line 489
    :cond_0
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeVoiceAddViaPoint:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    return-object p0

    .line 488
    :cond_1
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeSwitchMode:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;",
            ">;"
        }
    .end annotation

    .line 496
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 465
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->forNumber(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;
    .locals 1

    .line 129
    const-class v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;
    .locals 1

    .line 129
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->$VALUES:[Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 457
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->value:I

    return v0
.end method
