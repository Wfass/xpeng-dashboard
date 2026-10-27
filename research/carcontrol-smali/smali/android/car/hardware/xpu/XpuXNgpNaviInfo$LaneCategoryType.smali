.class public final enum Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;
.super Ljava/lang/Enum;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LaneCategoryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

.field public static final enum LaneTypeBus:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

.field public static final LaneTypeBus_VALUE:I = 0x1

.field public static final enum LaneTypeNULL:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

.field public static final LaneTypeNULL_VALUE:I = 0xff

.field public static final enum LaneTypeNormal:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

.field public static final LaneTypeNormal_VALUE:I = 0x0

.field public static final enum LaneTypeOther:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

.field public static final LaneTypeOther_VALUE:I = 0x2

.field public static final enum LaneTypeTidal:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

.field public static final LaneTypeTidal_VALUE:I = 0x3

.field public static final enum LaneTypeVariable:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

.field public static final LaneTypeVariable_VALUE:I = 0x4

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1001
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    const-string v1, "LaneTypeNormal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;->LaneTypeNormal:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    .line 1009
    new-instance v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    const-string v3, "LaneTypeBus"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;->LaneTypeBus:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    .line 1017
    new-instance v3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    const-string v5, "LaneTypeOther"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;->LaneTypeOther:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    .line 1025
    new-instance v5, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    const-string v7, "LaneTypeTidal"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;->LaneTypeTidal:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    .line 1033
    new-instance v7, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    const-string v9, "LaneTypeVariable"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;->LaneTypeVariable:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    .line 1041
    new-instance v9, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    const-string v11, "LaneTypeNULL"

    const/4 v12, 0x5

    const/16 v13, 0xff

    invoke-direct {v9, v11, v12, v13}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;->LaneTypeNULL:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    .line 1042
    new-instance v11, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    const-string v13, "UNRECOGNIZED"

    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-direct {v11, v13, v14, v15}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    const/4 v13, 0x7

    new-array v13, v13, [Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 992
    sput-object v13, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;->$VALUES:[Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    .line 1124
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1134
    iput p3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;
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

    const/16 v0, 0xff

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1114
    :cond_0
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;->LaneTypeNULL:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    return-object p0

    .line 1113
    :cond_1
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;->LaneTypeVariable:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    return-object p0

    .line 1112
    :cond_2
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;->LaneTypeTidal:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    return-object p0

    .line 1111
    :cond_3
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;->LaneTypeOther:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    return-object p0

    .line 1110
    :cond_4
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;->LaneTypeBus:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    return-object p0

    .line 1109
    :cond_5
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;->LaneTypeNormal:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;",
            ">;"
        }
    .end annotation

    .line 1121
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1104
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;->forNumber(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;
    .locals 1

    .line 992
    const-class v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;
    .locals 1

    .line 992
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;->$VALUES:[Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1096
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneCategoryType;->value:I

    return v0
.end method
