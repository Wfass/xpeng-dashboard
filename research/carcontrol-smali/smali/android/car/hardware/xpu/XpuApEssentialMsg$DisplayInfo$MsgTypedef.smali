.class public final enum Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;
.super Ljava/lang/Enum;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MsgTypedef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

.field public static final enum Driving_DATA:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

.field public static final Driving_DATA_VALUE:I = 0x3

.field public static final enum GLOBAL_TRAJECTORY:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

.field public static final GLOBAL_TRAJECTORY_VALUE:I = 0x4

.field public static final enum MAP_JSON:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

.field public static final MAP_JSON_VALUE:I = 0x1

.field public static final enum MAP_PROTO:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

.field public static final MAP_PROTO_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

.field public static final enum Unknown:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

.field public static final Unknown_VALUE:I

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 14054
    new-instance v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->Unknown:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    .line 14062
    new-instance v1, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    const-string v3, "MAP_JSON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->MAP_JSON:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    .line 14066
    new-instance v3, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    const-string v5, "MAP_PROTO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->MAP_PROTO:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    .line 14074
    new-instance v5, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    const-string v7, "Driving_DATA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->Driving_DATA:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    .line 14078
    new-instance v7, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    const-string v9, "GLOBAL_TRAJECTORY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->GLOBAL_TRAJECTORY:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    .line 14079
    new-instance v9, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    const/4 v11, 0x6

    new-array v11, v11, [Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 14049
    sput-object v11, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->$VALUES:[Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    .line 14140
    new-instance v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14150
    iput p3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 14130
    :cond_0
    sget-object p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->GLOBAL_TRAJECTORY:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    return-object p0

    .line 14129
    :cond_1
    sget-object p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->Driving_DATA:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    return-object p0

    .line 14128
    :cond_2
    sget-object p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->MAP_PROTO:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    return-object p0

    .line 14127
    :cond_3
    sget-object p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->MAP_JSON:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    return-object p0

    .line 14126
    :cond_4
    sget-object p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->Unknown:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;",
            ">;"
        }
    .end annotation

    .line 14137
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14121
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->forNumber(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;
    .locals 1

    .line 14049
    const-class v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;
    .locals 1

    .line 14049
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->$VALUES:[Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 14113
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->value:I

    return v0
.end method
