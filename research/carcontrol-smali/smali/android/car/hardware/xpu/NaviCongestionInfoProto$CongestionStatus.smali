.class public final enum Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;
.super Ljava/lang/Enum;
.source "NaviCongestionInfoProto.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/NaviCongestionInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CongestionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

.field public static final enum CongestionStatus_BLOCK:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

.field public static final CongestionStatus_BLOCK_VALUE:I = 0x3

.field public static final enum CongestionStatus_END:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

.field public static final CongestionStatus_END_VALUE:I = 0x5

.field public static final enum CongestionStatus_SEVERE_CONGESTION:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

.field public static final CongestionStatus_SEVERE_CONGESTION_VALUE:I = 0x4

.field public static final enum CongestionStatus_SLOW:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

.field public static final CongestionStatus_SLOW_VALUE:I = 0x2

.field public static final enum CongestionStatus_UNKNOWN:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

.field public static final CongestionStatus_UNKNOWN_VALUE:I = 0x0

.field public static final enum CongestionStatus_UNOBSTRUCTED:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

.field public static final CongestionStatus_UNOBSTRUCTED_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 19
    new-instance v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    const-string v1, "CongestionStatus_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->CongestionStatus_UNKNOWN:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    .line 23
    new-instance v1, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    const-string v3, "CongestionStatus_UNOBSTRUCTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->CongestionStatus_UNOBSTRUCTED:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    .line 27
    new-instance v3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    const-string v5, "CongestionStatus_SLOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->CongestionStatus_SLOW:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    .line 31
    new-instance v5, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    const-string v7, "CongestionStatus_BLOCK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->CongestionStatus_BLOCK:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    .line 35
    new-instance v7, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    const-string v9, "CongestionStatus_SEVERE_CONGESTION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->CongestionStatus_SEVERE_CONGESTION:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    .line 43
    new-instance v9, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    const-string v11, "CongestionStatus_END"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->CongestionStatus_END:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    .line 44
    new-instance v11, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    const-string v13, "UNRECOGNIZED"

    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-direct {v11, v13, v14, v15}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->UNRECOGNIZED:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    const/4 v13, 0x7

    new-array v13, v13, [Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 14
    sput-object v13, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->$VALUES:[Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    .line 106
    new-instance v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput p3, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;
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

    .line 96
    :cond_0
    sget-object p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->CongestionStatus_END:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    return-object p0

    .line 95
    :cond_1
    sget-object p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->CongestionStatus_SEVERE_CONGESTION:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    return-object p0

    .line 94
    :cond_2
    sget-object p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->CongestionStatus_BLOCK:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    return-object p0

    .line 93
    :cond_3
    sget-object p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->CongestionStatus_SLOW:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    return-object p0

    .line 92
    :cond_4
    sget-object p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->CongestionStatus_UNOBSTRUCTED:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    return-object p0

    .line 91
    :cond_5
    sget-object p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->CongestionStatus_UNKNOWN:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;",
            ">;"
        }
    .end annotation

    .line 103
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    invoke-static {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->forNumber(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;
    .locals 1

    .line 14
    const-class v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;
    .locals 1

    .line 14
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->$VALUES:[Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 78
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->value:I

    return v0
.end method
