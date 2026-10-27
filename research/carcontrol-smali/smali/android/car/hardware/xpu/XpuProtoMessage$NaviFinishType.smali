.class public final enum Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;
.super Ljava/lang/Enum;
.source "XpuProtoMessage.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NaviFinishType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum kNaviFinishByDefault:Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

.field public static final kNaviFinishByDefault_VALUE:I = 0x0

.field public static final enum kNaviFinishByXpu:Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

.field public static final kNaviFinishByXpu_VALUE:I = 0x1


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 611
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

    const-string v1, "kNaviFinishByDefault"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;->kNaviFinishByDefault:Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

    .line 619
    new-instance v1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

    const-string v3, "kNaviFinishByXpu"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;->kNaviFinishByXpu:Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

    .line 620
    new-instance v3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

    const-string v5, "UNRECOGNIZED"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 602
    sput-object v5, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;->$VALUES:[Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

    .line 666
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 675
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 676
    iput p3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 656
    :cond_0
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;->kNaviFinishByXpu:Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

    return-object p0

    .line 655
    :cond_1
    sget-object p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;->kNaviFinishByDefault:Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;",
            ">;"
        }
    .end annotation

    .line 663
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 650
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;->forNumber(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;
    .locals 1

    .line 602
    const-class v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;
    .locals 1

    .line 602
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;->$VALUES:[Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 642
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;->value:I

    return v0
.end method
