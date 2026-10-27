.class public final enum Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;
.super Ljava/lang/Enum;
.source "XpuXNgpNaviInfoVW.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdInfoCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

.field public static final enum LANE_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

.field public static final enum MANEUVER_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

.field public static final enum NAVI_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

.field public static final enum SDINFO_NOT_SET:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

.field public static final enum TOLL_LANE_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 9050
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    const-string v1, "LANE_INFO"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->LANE_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    .line 9051
    new-instance v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    const-string v4, "NAVI_INFO"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->NAVI_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    .line 9052
    new-instance v4, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    const-string v6, "MANEUVER_INFO"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->MANEUVER_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    .line 9053
    new-instance v6, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    const-string v8, "TOLL_LANE_INFO"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->TOLL_LANE_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    .line 9054
    new-instance v8, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    const-string v10, "SDINFO_NOT_SET"

    invoke-direct {v8, v10, v9, v2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->SDINFO_NOT_SET:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    const/4 v10, 0x5

    new-array v10, v10, [Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    .line 9048
    sput-object v10, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->$VALUES:[Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 9056
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9057
    iput p3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;
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

    .line 9072
    :cond_0
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->TOLL_LANE_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    return-object p0

    .line 9071
    :cond_1
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->MANEUVER_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    return-object p0

    .line 9070
    :cond_2
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->NAVI_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    return-object p0

    .line 9069
    :cond_3
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->LANE_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    return-object p0

    .line 9073
    :cond_4
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->SDINFO_NOT_SET:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    return-object p0
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9064
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->forNumber(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;
    .locals 1

    .line 9048
    const-class v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;
    .locals 1

    .line 9048
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->$VALUES:[Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 9078
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->value:I

    return v0
.end method
