.class public final enum Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;
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
    name = "FngpXpuCduRouteCmdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

.field public static final enum ROUTE_CMD_REQ_CUMMUTING_TIME:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

.field public static final ROUTE_CMD_REQ_CUMMUTING_TIME_VALUE:I = 0x4

.field public static final enum ROUTE_CMD_REQ_DEFAULT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

.field public static final ROUTE_CMD_REQ_DEFAULT_VALUE:I = 0x0

.field public static final enum ROUTE_CMD_REQ_END_NAME_POI:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

.field public static final ROUTE_CMD_REQ_END_NAME_POI_VALUE:I = 0x6

.field public static final enum ROUTE_CMD_REQ_HOME_OFFICE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

.field public static final ROUTE_CMD_REQ_HOME_OFFICE_VALUE:I = 0x2

.field public static final enum ROUTE_CMD_REQ_NAVI_CLOSE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

.field public static final ROUTE_CMD_REQ_NAVI_CLOSE_VALUE:I = 0x5

.field public static final enum ROUTE_CMD_REQ_NAVI_STATE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

.field public static final ROUTE_CMD_REQ_NAVI_STATE_VALUE:I = 0x7

.field public static final enum ROUTE_CMD_REQ_UID:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

.field public static final ROUTE_CMD_REQ_UID_VALUE:I = 0x1

.field public static final enum ROUTE_CMD_REQ_WORKDAY:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

.field public static final ROUTE_CMD_REQ_WORKDAY_VALUE:I = 0x3

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 2341
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    const-string v1, "ROUTE_CMD_REQ_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->ROUTE_CMD_REQ_DEFAULT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    .line 2349
    new-instance v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    const-string v3, "ROUTE_CMD_REQ_UID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->ROUTE_CMD_REQ_UID:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    .line 2357
    new-instance v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    const-string v5, "ROUTE_CMD_REQ_HOME_OFFICE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->ROUTE_CMD_REQ_HOME_OFFICE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    .line 2365
    new-instance v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    const-string v7, "ROUTE_CMD_REQ_WORKDAY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->ROUTE_CMD_REQ_WORKDAY:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    .line 2373
    new-instance v7, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    const-string v9, "ROUTE_CMD_REQ_CUMMUTING_TIME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->ROUTE_CMD_REQ_CUMMUTING_TIME:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    .line 2381
    new-instance v9, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    const-string v11, "ROUTE_CMD_REQ_NAVI_CLOSE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->ROUTE_CMD_REQ_NAVI_CLOSE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    .line 2389
    new-instance v11, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    const-string v13, "ROUTE_CMD_REQ_END_NAME_POI"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->ROUTE_CMD_REQ_END_NAME_POI:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    .line 2397
    new-instance v13, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    const-string v15, "ROUTE_CMD_REQ_NAVI_STATE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->ROUTE_CMD_REQ_NAVI_STATE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    .line 2398
    new-instance v15, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    const-string v14, "UNRECOGNIZED"

    const/16 v12, 0x8

    const/4 v10, -0x1

    invoke-direct {v15, v14, v12, v10}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    const/16 v10, 0x9

    new-array v10, v10, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v15, v10, v12

    .line 2336
    sput-object v10, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    .line 2494
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2503
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2504
    iput p3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2484
    :pswitch_0
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->ROUTE_CMD_REQ_NAVI_STATE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    return-object p0

    .line 2483
    :pswitch_1
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->ROUTE_CMD_REQ_END_NAME_POI:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    return-object p0

    .line 2482
    :pswitch_2
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->ROUTE_CMD_REQ_NAVI_CLOSE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    return-object p0

    .line 2481
    :pswitch_3
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->ROUTE_CMD_REQ_CUMMUTING_TIME:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    return-object p0

    .line 2480
    :pswitch_4
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->ROUTE_CMD_REQ_WORKDAY:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    return-object p0

    .line 2479
    :pswitch_5
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->ROUTE_CMD_REQ_HOME_OFFICE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    return-object p0

    .line 2478
    :pswitch_6
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->ROUTE_CMD_REQ_UID:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    return-object p0

    .line 2477
    :pswitch_7
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->ROUTE_CMD_REQ_DEFAULT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;",
            ">;"
        }
    .end annotation

    .line 2491
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2472
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;
    .locals 1

    .line 2336
    const-class v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;
    .locals 1

    .line 2336
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 2464
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->value:I

    return v0
.end method
