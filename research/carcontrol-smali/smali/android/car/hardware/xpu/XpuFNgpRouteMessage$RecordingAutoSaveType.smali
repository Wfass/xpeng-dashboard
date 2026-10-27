.class public final enum Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;
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
    name = "RecordingAutoSaveType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum kGoHomeAutoSave:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

.field public static final kGoHomeAutoSave_VALUE:I = 0x2

.field public static final enum kGoOfficeAutoSave:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

.field public static final kGoOfficeAutoSave_VALUE:I = 0x1

.field public static final enum kNormalType:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

.field public static final kNormalType_VALUE:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 2245
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    const-string v1, "kNormalType"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;->kNormalType:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    .line 2253
    new-instance v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    const-string v3, "kGoOfficeAutoSave"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;->kGoOfficeAutoSave:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    .line 2261
    new-instance v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    const-string v5, "kGoHomeAutoSave"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;->kGoHomeAutoSave:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    .line 2262
    new-instance v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    const-string v7, "UNRECOGNIZED"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2240
    sput-object v7, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    .line 2313
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2322
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2323
    iput p3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2303
    :cond_0
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;->kGoHomeAutoSave:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    return-object p0

    .line 2302
    :cond_1
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;->kGoOfficeAutoSave:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    return-object p0

    .line 2301
    :cond_2
    sget-object p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;->kNormalType:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;",
            ">;"
        }
    .end annotation

    .line 2310
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2296
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;
    .locals 1

    .line 2240
    const-class v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;
    .locals 1

    .line 2240
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;->$VALUES:[Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 2288
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;->value:I

    return v0
.end method
