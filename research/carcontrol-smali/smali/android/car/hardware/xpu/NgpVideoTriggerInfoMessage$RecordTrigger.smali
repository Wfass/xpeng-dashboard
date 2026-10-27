.class public final enum Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;
.super Ljava/lang/Enum;
.source "NgpVideoTriggerInfoMessage.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

.field public static final enum HANDLE_MERGE_AND_SPLIT_FLOW:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

.field public static final HANDLE_MERGE_AND_SPLIT_FLOW_VALUE:I = 0x6

.field public static final enum IN_LANE_DETOUR_ON_STRAIGHT_ROAD:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

.field public static final IN_LANE_DETOUR_ON_STRAIGHT_ROAD_VALUE:I = 0x5

.field public static final enum NORMAL_LANE_CHANGE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

.field public static final NORMAL_LANE_CHANGE_VALUE:I = 0x8

.field public static final enum NO_ACTION:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

.field public static final NO_ACTION_VALUE:I = 0x0

.field public static final enum NO_VEHICLE_TAKEOVER:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

.field public static final NO_VEHICLE_TAKEOVER_VALUE:I = 0x9

.field public static final enum OVERTAKING_LANE_CHANGE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

.field public static final OVERTAKING_LANE_CHANGE_VALUE:I = 0x7

.field public static final enum PASS_ETC:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

.field public static final PASS_ETC_VALUE:I = 0xe

.field public static final enum PASS_INTERSECTION:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

.field public static final enum PASS_INTERSECTION_AND_DETOUR:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

.field public static final PASS_INTERSECTION_AND_DETOUR_VALUE:I = 0x1

.field public static final PASS_INTERSECTION_VALUE:I = 0x2

.field public static final enum PASS_MAIN_SIDE_ROADS:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

.field public static final PASS_MAIN_SIDE_ROADS_VALUE:I = 0xd

.field public static final enum PASS_ROUNDABOUT:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

.field public static final PASS_ROUNDABOUT_VALUE:I = 0xc

.field public static final enum PASS_U_TURN:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

.field public static final PASS_U_TURN_VALUE:I = 0xb

.field public static final enum PASS_WAITING_TURN_AREA:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

.field public static final PASS_WAITING_TURN_AREA_VALUE:I = 0xa

.field public static final enum STRAIGHT_ROAD_DETOUR:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

.field public static final STRAIGHT_ROAD_DETOUR_VALUE:I = 0x4

.field public static final enum TAKE_SIDE_ROAD:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

.field public static final TAKE_SIDE_ROAD_VALUE:I = 0x3

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 23
    new-instance v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    const-string v1, "NO_ACTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->NO_ACTION:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    .line 31
    new-instance v1, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    const-string v3, "PASS_INTERSECTION_AND_DETOUR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->PASS_INTERSECTION_AND_DETOUR:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    .line 39
    new-instance v3, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    const-string v5, "PASS_INTERSECTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->PASS_INTERSECTION:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    .line 47
    new-instance v5, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    const-string v7, "TAKE_SIDE_ROAD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->TAKE_SIDE_ROAD:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    .line 55
    new-instance v7, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    const-string v9, "STRAIGHT_ROAD_DETOUR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->STRAIGHT_ROAD_DETOUR:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    .line 63
    new-instance v9, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    const-string v11, "IN_LANE_DETOUR_ON_STRAIGHT_ROAD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->IN_LANE_DETOUR_ON_STRAIGHT_ROAD:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    .line 71
    new-instance v11, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    const-string v13, "HANDLE_MERGE_AND_SPLIT_FLOW"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->HANDLE_MERGE_AND_SPLIT_FLOW:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    .line 79
    new-instance v13, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    const-string v15, "OVERTAKING_LANE_CHANGE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;-><init>(Ljava/lang/String;II)V

    sput-object v13, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->OVERTAKING_LANE_CHANGE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    .line 87
    new-instance v15, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    const-string v14, "NORMAL_LANE_CHANGE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;-><init>(Ljava/lang/String;II)V

    sput-object v15, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->NORMAL_LANE_CHANGE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    .line 95
    new-instance v14, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    const-string v12, "NO_VEHICLE_TAKEOVER"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;-><init>(Ljava/lang/String;II)V

    sput-object v14, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->NO_VEHICLE_TAKEOVER:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    .line 103
    new-instance v12, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    const-string v10, "PASS_WAITING_TURN_AREA"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;-><init>(Ljava/lang/String;II)V

    sput-object v12, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->PASS_WAITING_TURN_AREA:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    .line 111
    new-instance v10, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    const-string v8, "PASS_U_TURN"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;-><init>(Ljava/lang/String;II)V

    sput-object v10, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->PASS_U_TURN:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    .line 119
    new-instance v8, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    const-string v6, "PASS_ROUNDABOUT"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;-><init>(Ljava/lang/String;II)V

    sput-object v8, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->PASS_ROUNDABOUT:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    .line 127
    new-instance v6, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    const-string v4, "PASS_MAIN_SIDE_ROADS"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->PASS_MAIN_SIDE_ROADS:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    .line 135
    new-instance v4, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    const-string v2, "PASS_ETC"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->PASS_ETC:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    .line 136
    new-instance v2, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    const-string v6, "UNRECOGNIZED"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    move-object/from16 v18, v8

    const/4 v8, -0x1

    invoke-direct {v2, v6, v4, v8}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->UNRECOGNIZED:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    const/16 v6, 0x10

    new-array v6, v6, [Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v18, v6, v0

    const/16 v0, 0xd

    aput-object v16, v6, v0

    const/16 v0, 0xe

    aput-object v17, v6, v0

    aput-object v2, v6, v4

    .line 14
    sput-object v6, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->$VALUES:[Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    .line 299
    new-instance v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 308
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 309
    iput p3, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 289
    :pswitch_0
    sget-object p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->PASS_ETC:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    return-object p0

    .line 288
    :pswitch_1
    sget-object p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->PASS_MAIN_SIDE_ROADS:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    return-object p0

    .line 287
    :pswitch_2
    sget-object p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->PASS_ROUNDABOUT:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    return-object p0

    .line 286
    :pswitch_3
    sget-object p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->PASS_U_TURN:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    return-object p0

    .line 285
    :pswitch_4
    sget-object p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->PASS_WAITING_TURN_AREA:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    return-object p0

    .line 284
    :pswitch_5
    sget-object p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->NO_VEHICLE_TAKEOVER:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    return-object p0

    .line 283
    :pswitch_6
    sget-object p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->NORMAL_LANE_CHANGE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    return-object p0

    .line 282
    :pswitch_7
    sget-object p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->OVERTAKING_LANE_CHANGE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    return-object p0

    .line 281
    :pswitch_8
    sget-object p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->HANDLE_MERGE_AND_SPLIT_FLOW:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    return-object p0

    .line 280
    :pswitch_9
    sget-object p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->IN_LANE_DETOUR_ON_STRAIGHT_ROAD:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    return-object p0

    .line 279
    :pswitch_a
    sget-object p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->STRAIGHT_ROAD_DETOUR:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    return-object p0

    .line 278
    :pswitch_b
    sget-object p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->TAKE_SIDE_ROAD:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    return-object p0

    .line 277
    :pswitch_c
    sget-object p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->PASS_INTERSECTION:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    return-object p0

    .line 276
    :pswitch_d
    sget-object p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->PASS_INTERSECTION_AND_DETOUR:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    return-object p0

    .line 275
    :pswitch_e
    sget-object p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->NO_ACTION:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
            "Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;",
            ">;"
        }
    .end annotation

    .line 296
    sget-object v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 270
    invoke-static {p0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->forNumber(I)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;
    .locals 1

    .line 14
    const-class v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;
    .locals 1

    .line 14
    sget-object v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->$VALUES:[Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 262
    iget v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->value:I

    return v0
.end method
