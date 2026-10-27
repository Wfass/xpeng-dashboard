.class public final enum Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;
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
    name = "UnitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

.field public static final enum METER:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

.field public static final METER_VALUE:I = 0x0

.field public static final enum UNRECOGNIZED:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

.field private static final internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum temp_UnitType_1:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

.field public static final temp_UnitType_1_VALUE:I = 0x1

.field public static final enum temp_UnitType_2:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

.field public static final temp_UnitType_2_VALUE:I = 0x2

.field public static final enum temp_UnitType_3:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

.field public static final temp_UnitType_3_VALUE:I = 0x3

.field public static final enum temp_UnitType_4:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

.field public static final temp_UnitType_4_VALUE:I = 0x4


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 153
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    const-string v1, "METER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;->METER:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    .line 157
    new-instance v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    const-string/jumbo v3, "temp_UnitType_1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;->temp_UnitType_1:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    .line 161
    new-instance v3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    const-string/jumbo v5, "temp_UnitType_2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;->temp_UnitType_2:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    .line 165
    new-instance v5, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    const-string/jumbo v7, "temp_UnitType_3"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;->temp_UnitType_3:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    .line 169
    new-instance v7, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    const-string/jumbo v9, "temp_UnitType_4"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;->temp_UnitType_4:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    .line 170
    new-instance v9, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    const/4 v11, 0x6

    new-array v11, v11, [Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 148
    sput-object v11, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;->$VALUES:[Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    .line 223
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 232
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 233
    iput p3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;
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

    .line 213
    :cond_0
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;->temp_UnitType_4:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    return-object p0

    .line 212
    :cond_1
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;->temp_UnitType_3:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    return-object p0

    .line 211
    :cond_2
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;->temp_UnitType_2:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    return-object p0

    .line 210
    :cond_3
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;->temp_UnitType_1:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    return-object p0

    .line 209
    :cond_4
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;->METER:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;",
            ">;"
        }
    .end annotation

    .line 220
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;->internalValueMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;->forNumber(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;
    .locals 1

    .line 148
    const-class v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;
    .locals 1

    .line 148
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;->$VALUES:[Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 196
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$UnitType;->value:I

    return v0
.end method
