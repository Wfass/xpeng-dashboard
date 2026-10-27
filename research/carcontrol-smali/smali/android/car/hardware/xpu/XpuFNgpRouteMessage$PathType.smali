.class public final enum Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;
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
    name = "PathType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

.field public static final enum CUSTOMIZE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

.field public static final CUSTOMIZE_VALUE:I = 0x3

.field public static final enum GO_HOME_PATH:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

.field public static final GO_HOME_PATH_VALUE:I = 0x5

.field public static final enum GO_OFFICE_PATH:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

.field public static final GO_OFFICE_PATH_VALUE:I = 0x4

.field public static final enum RESERVED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

.field public static final RESERVED_VALUE:I = 0x0

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

.field public static final enum VPA_PATH:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

.field public static final VPA_PATH_VALUE:I = 0x6

.field public static final enum WEEKEND_DAY_PATH:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

.field public static final WEEKEND_DAY_PATH_VALUE:I = 0x2

.field public static final enum WORKING_DAY_PATH:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

.field public static final WORKING_DAY_PATH_VALUE:I = 0x1

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 363
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    const-string v1, "RESERVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->RESERVED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    .line 367
    new-instance v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    const-string v3, "WORKING_DAY_PATH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->WORKING_DAY_PATH:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    .line 371
    new-instance v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    const-string v5, "WEEKEND_DAY_PATH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->WEEKEND_DAY_PATH:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    .line 375
    new-instance v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    const-string v7, "CUSTOMIZE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->CUSTOMIZE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    .line 383
    new-instance v7, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    const-string v9, "GO_OFFICE_PATH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->GO_OFFICE_PATH:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    .line 391
    new-instance v9, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    const-string v11, "GO_HOME_PATH"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->GO_HOME_PATH:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    .line 399
    new-instance v11, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    const-string v13, "VPA_PATH"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->VPA_PATH:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    .line 400
    new-instance v13, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    const-string v15, "UNRECOGNIZED"

    const/4 v14, 0x7

    const/4 v12, -0x1

    invoke-direct {v13, v15, v14, v12}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    const/16 v12, 0x8

    new-array v12, v12, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    .line 358
    sput-object v12, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    .line 475
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 484
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 485
    iput p3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 465
    :pswitch_0
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->VPA_PATH:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    return-object p0

    .line 464
    :pswitch_1
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->GO_HOME_PATH:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    return-object p0

    .line 463
    :pswitch_2
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->GO_OFFICE_PATH:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    return-object p0

    .line 462
    :pswitch_3
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->CUSTOMIZE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    return-object p0

    .line 461
    :pswitch_4
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->WEEKEND_DAY_PATH:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    return-object p0

    .line 460
    :pswitch_5
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->WORKING_DAY_PATH:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    return-object p0

    .line 459
    :pswitch_6
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->RESERVED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;",
            ">;"
        }
    .end annotation

    .line 472
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 454
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;
    .locals 1

    .line 358
    const-class v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;
    .locals 1

    .line 358
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 446
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->value:I

    return v0
.end method
