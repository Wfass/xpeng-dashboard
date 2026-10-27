.class public final enum Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;
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
    name = "PathLearnStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum kPathLearnDefault:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

.field public static final kPathLearnDefault_VALUE:I = 0x0

.field public static final enum kPathLearnFailed:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

.field public static final kPathLearnFailed_VALUE:I = 0x2

.field public static final enum kPathLearnSuccess:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

.field public static final kPathLearnSuccess_VALUE:I = 0x3

.field public static final enum kPathLearnWaiting:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

.field public static final kPathLearnWaiting_VALUE:I = 0x5

.field public static final enum kPathLearning:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

.field public static final kPathLearning_VALUE:I = 0x1

.field public static final enum kPathNeedRelearn:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

.field public static final kPathNeedRelearn_VALUE:I = 0x6

.field public static final enum kPathUsing:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

.field public static final kPathUsing_VALUE:I = 0x4


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 111
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    const-string v1, "kPathLearnDefault"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->kPathLearnDefault:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    .line 119
    new-instance v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    const-string v3, "kPathLearning"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->kPathLearning:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    .line 127
    new-instance v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    const-string v5, "kPathLearnFailed"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->kPathLearnFailed:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    .line 135
    new-instance v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    const-string v7, "kPathLearnSuccess"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->kPathLearnSuccess:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    .line 143
    new-instance v7, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    const-string v9, "kPathUsing"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->kPathUsing:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    .line 151
    new-instance v9, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    const-string v11, "kPathLearnWaiting"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->kPathLearnWaiting:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    .line 159
    new-instance v11, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    const-string v13, "kPathNeedRelearn"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->kPathNeedRelearn:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    .line 160
    new-instance v13, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    const-string v15, "UNRECOGNIZED"

    const/4 v14, 0x7

    const/4 v12, -0x1

    invoke-direct {v13, v15, v14, v12}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;-><init>(Ljava/lang/String;II)V

    sput-object v13, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    const/16 v12, 0x8

    new-array v12, v12, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

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

    .line 102
    sput-object v12, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    .line 251
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 260
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 261
    iput p3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 241
    :pswitch_0
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->kPathNeedRelearn:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    return-object p0

    .line 240
    :pswitch_1
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->kPathLearnWaiting:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    return-object p0

    .line 239
    :pswitch_2
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->kPathUsing:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    return-object p0

    .line 238
    :pswitch_3
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->kPathLearnSuccess:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    return-object p0

    .line 237
    :pswitch_4
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->kPathLearnFailed:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    return-object p0

    .line 236
    :pswitch_5
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->kPathLearning:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    return-object p0

    .line 235
    :pswitch_6
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->kPathLearnDefault:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

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
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;",
            ">;"
        }
    .end annotation

    .line 248
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;
    .locals 1

    .line 102
    const-class v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;
    .locals 1

    .line 102
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 222
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->value:I

    return v0
.end method
