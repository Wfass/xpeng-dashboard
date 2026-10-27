.class public final enum Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;
.super Ljava/lang/Enum;
.source "XpuXNgpNaviInfoVW.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExtenLaneAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

.field public static final enum ExtenLaneActionLeft:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

.field public static final enum ExtenLaneActionLeftNarrow:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

.field public static final ExtenLaneActionLeftNarrow_VALUE:I = 0x1a

.field public static final ExtenLaneActionLeft_VALUE:I = 0x1

.field public static final enum ExtenLaneActionNULL:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

.field public static final ExtenLaneActionNULL_VALUE:I = 0xff

.field public static final enum ExtenLaneActionNormal:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

.field public static final ExtenLaneActionNormal_VALUE:I = 0x0

.field public static final enum ExtenLaneActionRight:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

.field public static final enum ExtenLaneActionRightNarrow:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

.field public static final ExtenLaneActionRightNarrow_VALUE:I = 0x1b

.field public static final ExtenLaneActionRight_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 846
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    const-string v1, "ExtenLaneActionNormal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;->ExtenLaneActionNormal:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    .line 854
    new-instance v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    const-string v3, "ExtenLaneActionLeft"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;->ExtenLaneActionLeft:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    .line 862
    new-instance v3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    const-string v5, "ExtenLaneActionRight"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;->ExtenLaneActionRight:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    .line 870
    new-instance v5, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    const-string v7, "ExtenLaneActionLeftNarrow"

    const/4 v8, 0x3

    const/16 v9, 0x1a

    invoke-direct {v5, v7, v8, v9}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;->ExtenLaneActionLeftNarrow:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    .line 878
    new-instance v7, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    const-string v9, "ExtenLaneActionRightNarrow"

    const/4 v10, 0x4

    const/16 v11, 0x1b

    invoke-direct {v7, v9, v10, v11}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;->ExtenLaneActionRightNarrow:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    .line 886
    new-instance v9, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    const-string v11, "ExtenLaneActionNULL"

    const/4 v12, 0x5

    const/16 v13, 0xff

    invoke-direct {v9, v11, v12, v13}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;->ExtenLaneActionNULL:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    .line 887
    new-instance v11, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    const-string v13, "UNRECOGNIZED"

    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-direct {v11, v13, v14, v15}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    const/4 v13, 0x7

    new-array v13, v13, [Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 837
    sput-object v13, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;->$VALUES:[Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    .line 969
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 978
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 979
    iput p3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_1

    const/16 v0, 0xff

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 959
    :cond_0
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;->ExtenLaneActionNULL:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    return-object p0

    .line 958
    :cond_1
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;->ExtenLaneActionRightNarrow:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    return-object p0

    .line 957
    :cond_2
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;->ExtenLaneActionLeftNarrow:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    return-object p0

    .line 956
    :cond_3
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;->ExtenLaneActionRight:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    return-object p0

    .line 955
    :cond_4
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;->ExtenLaneActionLeft:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    return-object p0

    .line 954
    :cond_5
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;->ExtenLaneActionNormal:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;",
            ">;"
        }
    .end annotation

    .line 966
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 949
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;->forNumber(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;
    .locals 1

    .line 837
    const-class v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;
    .locals 1

    .line 837
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;->$VALUES:[Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 941
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ExtenLaneAction;->value:I

    return v0
.end method
