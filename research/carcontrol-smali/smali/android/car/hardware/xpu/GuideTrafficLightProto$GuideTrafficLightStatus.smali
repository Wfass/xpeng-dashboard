.class public final enum Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;
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
    name = "GuideTrafficLightStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

.field public static final enum GUIDE_TRAFFIC_LIGHT_STATUS_ENTER_GREEN_LIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

.field public static final GUIDE_TRAFFIC_LIGHT_STATUS_ENTER_GREEN_LIGHT_VALUE:I = 0x4

.field public static final enum GUIDE_TRAFFIC_LIGHT_STATUS_GREEN_LIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

.field public static final GUIDE_TRAFFIC_LIGHT_STATUS_GREEN_LIGHT_VALUE:I = 0x5

.field public static final enum GUIDE_TRAFFIC_LIGHT_STATUS_NONE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

.field public static final GUIDE_TRAFFIC_LIGHT_STATUS_NONE_VALUE:I = 0x0

.field public static final enum GUIDE_TRAFFIC_LIGHT_STATUS_RED_LIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

.field public static final GUIDE_TRAFFIC_LIGHT_STATUS_RED_LIGHT_VALUE:I = 0x2

.field public static final enum GUIDE_TRAFFIC_LIGHT_STATUS_SUSPEND:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

.field public static final GUIDE_TRAFFIC_LIGHT_STATUS_SUSPEND_VALUE:I = 0x7

.field public static final enum GUIDE_TRAFFIC_LIGHT_STATUS_WAIT_ROUND_COUNT:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

.field public static final GUIDE_TRAFFIC_LIGHT_STATUS_WAIT_ROUND_COUNT_VALUE:I = 0x1

.field public static final enum GUIDE_TRAFFIC_LIGHT_STATUS_WILL_GREEN_LIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

.field public static final GUIDE_TRAFFIC_LIGHT_STATUS_WILL_GREEN_LIGHT_VALUE:I = 0x3

.field public static final enum GUIDE_TRAFFIC_LIGHT_STATUS_WILL_RED_LIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

.field public static final GUIDE_TRAFFIC_LIGHT_STATUS_WILL_RED_LIGHT_VALUE:I = 0x6

.field public static final enum GUIDE_TRAFFIC_LIGHT_STATUS_YELLOW_LIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

.field public static final GUIDE_TRAFFIC_LIGHT_STATUS_YELLOW_LIGHT_VALUE:I = 0x8

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 113
    new-instance v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    const-string v1, "GUIDE_TRAFFIC_LIGHT_STATUS_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->GUIDE_TRAFFIC_LIGHT_STATUS_NONE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    .line 117
    new-instance v1, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    const-string v3, "GUIDE_TRAFFIC_LIGHT_STATUS_WAIT_ROUND_COUNT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->GUIDE_TRAFFIC_LIGHT_STATUS_WAIT_ROUND_COUNT:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    .line 121
    new-instance v3, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    const-string v5, "GUIDE_TRAFFIC_LIGHT_STATUS_RED_LIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->GUIDE_TRAFFIC_LIGHT_STATUS_RED_LIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    .line 125
    new-instance v5, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    const-string v7, "GUIDE_TRAFFIC_LIGHT_STATUS_WILL_GREEN_LIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->GUIDE_TRAFFIC_LIGHT_STATUS_WILL_GREEN_LIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    .line 129
    new-instance v7, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    const-string v9, "GUIDE_TRAFFIC_LIGHT_STATUS_ENTER_GREEN_LIGHT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->GUIDE_TRAFFIC_LIGHT_STATUS_ENTER_GREEN_LIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    .line 133
    new-instance v9, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    const-string v11, "GUIDE_TRAFFIC_LIGHT_STATUS_GREEN_LIGHT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->GUIDE_TRAFFIC_LIGHT_STATUS_GREEN_LIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    .line 137
    new-instance v11, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    const-string v13, "GUIDE_TRAFFIC_LIGHT_STATUS_WILL_RED_LIGHT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->GUIDE_TRAFFIC_LIGHT_STATUS_WILL_RED_LIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    .line 141
    new-instance v13, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    const-string v15, "GUIDE_TRAFFIC_LIGHT_STATUS_SUSPEND"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;-><init>(Ljava/lang/String;II)V

    sput-object v13, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->GUIDE_TRAFFIC_LIGHT_STATUS_SUSPEND:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    .line 145
    new-instance v15, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    const-string v14, "GUIDE_TRAFFIC_LIGHT_STATUS_YELLOW_LIGHT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;-><init>(Ljava/lang/String;II)V

    sput-object v15, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->GUIDE_TRAFFIC_LIGHT_STATUS_YELLOW_LIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    .line 146
    new-instance v14, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    const-string v12, "UNRECOGNIZED"

    const/16 v10, 0x9

    const/4 v8, -0x1

    invoke-direct {v14, v12, v10, v8}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;-><init>(Ljava/lang/String;II)V

    sput-object v14, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->UNRECOGNIZED:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    const/16 v8, 0xa

    new-array v8, v8, [Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    aput-object v14, v8, v10

    .line 108
    sput-object v8, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->$VALUES:[Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    .line 219
    new-instance v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 228
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 229
    iput p3, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 209
    :pswitch_0
    sget-object p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->GUIDE_TRAFFIC_LIGHT_STATUS_YELLOW_LIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    return-object p0

    .line 208
    :pswitch_1
    sget-object p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->GUIDE_TRAFFIC_LIGHT_STATUS_SUSPEND:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    return-object p0

    .line 207
    :pswitch_2
    sget-object p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->GUIDE_TRAFFIC_LIGHT_STATUS_WILL_RED_LIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    return-object p0

    .line 206
    :pswitch_3
    sget-object p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->GUIDE_TRAFFIC_LIGHT_STATUS_GREEN_LIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    return-object p0

    .line 205
    :pswitch_4
    sget-object p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->GUIDE_TRAFFIC_LIGHT_STATUS_ENTER_GREEN_LIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    return-object p0

    .line 204
    :pswitch_5
    sget-object p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->GUIDE_TRAFFIC_LIGHT_STATUS_WILL_GREEN_LIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    return-object p0

    .line 203
    :pswitch_6
    sget-object p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->GUIDE_TRAFFIC_LIGHT_STATUS_RED_LIGHT:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    return-object p0

    .line 202
    :pswitch_7
    sget-object p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->GUIDE_TRAFFIC_LIGHT_STATUS_WAIT_ROUND_COUNT:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    return-object p0

    .line 201
    :pswitch_8
    sget-object p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->GUIDE_TRAFFIC_LIGHT_STATUS_NONE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
            "Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;",
            ">;"
        }
    .end annotation

    .line 216
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    invoke-static {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->forNumber(I)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;
    .locals 1

    .line 108
    const-class v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;
    .locals 1

    .line 108
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->$VALUES:[Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 188
    iget v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->value:I

    return v0
.end method
