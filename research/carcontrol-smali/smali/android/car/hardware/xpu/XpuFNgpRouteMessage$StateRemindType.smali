.class public final enum Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;
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
    name = "StateRemindType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum kDisplayBriefList:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

.field public static final kDisplayBriefList_VALUE:I = 0x1

.field public static final enum kDisplayCommutingBriefList:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

.field public static final kDisplayCommutingBriefList_VALUE:I = 0x3

.field public static final enum kDisplayEmulatorNavigation:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

.field public static final kDisplayEmulatorNavigation_VALUE:I = 0x2

.field public static final enum kDisplayInternalBriefList:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

.field public static final kDisplayInternalBriefList_VALUE:I = 0x4

.field public static final enum kDisplayNGPEmulatorNavigation:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

.field public static final kDisplayNGPEmulatorNavigation_VALUE:I = 0x5

.field public static final enum kDisplayNone:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

.field public static final kDisplayNone_VALUE:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1092
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    const-string v1, "kDisplayNone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->kDisplayNone:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    .line 1100
    new-instance v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    const-string v3, "kDisplayBriefList"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->kDisplayBriefList:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    .line 1108
    new-instance v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    const-string v5, "kDisplayEmulatorNavigation"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->kDisplayEmulatorNavigation:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    .line 1116
    new-instance v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    const-string v7, "kDisplayCommutingBriefList"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->kDisplayCommutingBriefList:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    .line 1124
    new-instance v7, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    const-string v9, "kDisplayInternalBriefList"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->kDisplayInternalBriefList:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    .line 1132
    new-instance v9, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    const-string v11, "kDisplayNGPEmulatorNavigation"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->kDisplayNGPEmulatorNavigation:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    .line 1133
    new-instance v11, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    const-string v13, "UNRECOGNIZED"

    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-direct {v11, v13, v14, v15}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    const/4 v13, 0x7

    new-array v13, v13, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 1083
    sput-object v13, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    .line 1215
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1225
    iput p3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;
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

    .line 1205
    :cond_0
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->kDisplayNGPEmulatorNavigation:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    return-object p0

    .line 1204
    :cond_1
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->kDisplayInternalBriefList:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    return-object p0

    .line 1203
    :cond_2
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->kDisplayCommutingBriefList:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    return-object p0

    .line 1202
    :cond_3
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->kDisplayEmulatorNavigation:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    return-object p0

    .line 1201
    :cond_4
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->kDisplayBriefList:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    return-object p0

    .line 1200
    :cond_5
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->kDisplayNone:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;",
            ">;"
        }
    .end annotation

    .line 1212
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1195
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;
    .locals 1

    .line 1083
    const-class v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;
    .locals 1

    .line 1083
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1187
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->value:I

    return v0
.end method
