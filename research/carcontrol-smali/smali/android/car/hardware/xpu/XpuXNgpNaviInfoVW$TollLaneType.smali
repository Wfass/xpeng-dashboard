.class public final enum Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;
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
    name = "TollLaneType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

.field public static final enum TollLaneTypeETC:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

.field public static final TollLaneTypeETC_VALUE:I = 0x2

.field public static final enum TolllaneTypeAliPay:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

.field public static final TolllaneTypeAliPay_VALUE:I = 0x8

.field public static final enum TolllaneTypeAutomatric:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

.field public static final TolllaneTypeAutomatric_VALUE:I = 0x4

.field public static final enum TolllaneTypeITC:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

.field public static final TolllaneTypeITC_VALUE:I = 0x20

.field public static final enum TolllaneTypeNULL:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

.field public static final TolllaneTypeNULL_VALUE:I = 0x0

.field public static final enum TolllaneTypeNormal:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

.field public static final TolllaneTypeNormal_VALUE:I = 0x1

.field public static final enum TolllaneTypeWechatPay:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

.field public static final TolllaneTypeWechatPay_VALUE:I = 0x10

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 2022
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    const-string v1, "TolllaneTypeNULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->TolllaneTypeNULL:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    .line 2030
    new-instance v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    const-string v3, "TolllaneTypeNormal"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->TolllaneTypeNormal:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    .line 2038
    new-instance v3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    const-string v5, "TollLaneTypeETC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->TollLaneTypeETC:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    .line 2046
    new-instance v5, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    const-string v7, "TolllaneTypeAutomatric"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->TolllaneTypeAutomatric:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    .line 2054
    new-instance v7, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    const-string v10, "TolllaneTypeAliPay"

    const/16 v11, 0x8

    invoke-direct {v7, v10, v9, v11}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->TolllaneTypeAliPay:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    .line 2062
    new-instance v10, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    const-string v12, "TolllaneTypeWechatPay"

    const/4 v13, 0x5

    const/16 v14, 0x10

    invoke-direct {v10, v12, v13, v14}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->TolllaneTypeWechatPay:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    .line 2070
    new-instance v12, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    const-string v14, "TolllaneTypeITC"

    const/4 v15, 0x6

    const/16 v13, 0x20

    invoke-direct {v12, v14, v15, v13}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->TolllaneTypeITC:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    .line 2071
    new-instance v13, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    const-string v14, "UNRECOGNIZED"

    const/4 v15, 0x7

    const/4 v9, -0x1

    invoke-direct {v13, v14, v15, v9}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    new-array v9, v11, [Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    const/4 v0, 0x4

    aput-object v7, v9, v0

    const/4 v0, 0x5

    aput-object v10, v9, v0

    const/4 v0, 0x6

    aput-object v12, v9, v0

    aput-object v13, v9, v15

    .line 2013
    sput-object v9, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->$VALUES:[Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    .line 2162
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2172
    iput p3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;
    .locals 1

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2152
    :cond_0
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->TolllaneTypeITC:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    return-object p0

    .line 2151
    :cond_1
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->TolllaneTypeWechatPay:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    return-object p0

    .line 2150
    :cond_2
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->TolllaneTypeAliPay:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    return-object p0

    .line 2149
    :cond_3
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->TolllaneTypeAutomatric:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    return-object p0

    .line 2148
    :cond_4
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->TollLaneTypeETC:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    return-object p0

    .line 2147
    :cond_5
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->TolllaneTypeNormal:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    return-object p0

    .line 2146
    :cond_6
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->TolllaneTypeNULL:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;",
            ">;"
        }
    .end annotation

    .line 2159
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2141
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->forNumber(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;
    .locals 1

    .line 2013
    const-class v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;
    .locals 1

    .line 2013
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->$VALUES:[Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 2133
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->value:I

    return v0
.end method
