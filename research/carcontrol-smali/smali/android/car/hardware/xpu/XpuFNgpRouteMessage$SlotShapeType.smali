.class public final enum Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;
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
    name = "SlotShapeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

.field public static final enum Angle:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

.field public static final Angle_VALUE:I = 0x9

.field public static final enum Left_Angle:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

.field public static final Left_Angle_VALUE:I = 0x5

.field public static final enum Left_Parallel:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

.field public static final Left_Parallel_VALUE:I = 0x1

.field public static final enum Left_Vertical:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

.field public static final Left_Vertical_VALUE:I = 0x3

.field public static final enum Max_Num:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

.field public static final Max_Num_VALUE:I = 0xa

.field public static final enum Parallel:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

.field public static final Parallel_VALUE:I = 0x7

.field public static final enum Right_Angle:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

.field public static final Right_Angle_VALUE:I = 0x6

.field public static final enum Right_Parallel:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

.field public static final Right_Parallel_VALUE:I = 0x2

.field public static final enum Right_Vertical:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

.field public static final Right_Vertical_VALUE:I = 0x4

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

.field public static final enum Unknown:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

.field public static final Unknown_VALUE:I = 0x0

.field public static final enum Vertical:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

.field public static final Vertical_VALUE:I = 0x8

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1364
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Unknown:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    .line 1372
    new-instance v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    const-string v3, "Left_Parallel"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Left_Parallel:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    .line 1380
    new-instance v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    const-string v5, "Right_Parallel"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Right_Parallel:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    .line 1388
    new-instance v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    const-string v7, "Left_Vertical"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Left_Vertical:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    .line 1396
    new-instance v7, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    const-string v9, "Right_Vertical"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Right_Vertical:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    .line 1404
    new-instance v9, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    const-string v11, "Left_Angle"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Left_Angle:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    .line 1412
    new-instance v11, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    const-string v13, "Right_Angle"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Right_Angle:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    .line 1420
    new-instance v13, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    const-string v15, "Parallel"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Parallel:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    .line 1428
    new-instance v15, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    const-string v14, "Vertical"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Vertical:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    .line 1436
    new-instance v14, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    const-string v12, "Angle"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Angle:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    .line 1440
    new-instance v12, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    const-string v10, "Max_Num"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Max_Num:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    .line 1441
    new-instance v10, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    const-string v8, "UNRECOGNIZED"

    const/16 v6, 0xb

    const/4 v4, -0x1

    invoke-direct {v10, v8, v6, v4}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    const/16 v4, 0xc

    new-array v4, v4, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    aput-object v0, v4, v2

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

    aput-object v10, v4, v6

    .line 1359
    sput-object v4, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    .line 1560
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1569
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1570
    iput p3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1550
    :pswitch_0
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Max_Num:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    return-object p0

    .line 1549
    :pswitch_1
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Angle:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    return-object p0

    .line 1548
    :pswitch_2
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Vertical:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    return-object p0

    .line 1547
    :pswitch_3
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Parallel:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    return-object p0

    .line 1546
    :pswitch_4
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Right_Angle:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    return-object p0

    .line 1545
    :pswitch_5
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Left_Angle:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    return-object p0

    .line 1544
    :pswitch_6
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Right_Vertical:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    return-object p0

    .line 1543
    :pswitch_7
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Left_Vertical:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    return-object p0

    .line 1542
    :pswitch_8
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Right_Parallel:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    return-object p0

    .line 1541
    :pswitch_9
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Left_Parallel:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    return-object p0

    .line 1540
    :pswitch_a
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Unknown:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;",
            ">;"
        }
    .end annotation

    .line 1557
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1535
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;
    .locals 1

    .line 1359
    const-class v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;
    .locals 1

    .line 1359
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1527
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->value:I

    return v0
.end method
