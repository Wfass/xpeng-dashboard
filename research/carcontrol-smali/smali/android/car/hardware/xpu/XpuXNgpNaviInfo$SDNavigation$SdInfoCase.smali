.class public final enum Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;
.super Ljava/lang/Enum;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdInfoCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

.field public static final enum LANE_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

.field public static final enum MANEUVER_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

.field public static final enum MANEUVER_INFO_LIST:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

.field public static final enum NAVI_FACILITY_LIST:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

.field public static final enum NAVI_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

.field public static final enum SDINFO_NOT_SET:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

.field public static final enum SEGMENT_LANE_INFOS_LIST:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

.field public static final enum TOLL_LANE_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 13301
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    const-string v1, "LANE_INFO"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->LANE_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    .line 13302
    new-instance v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    const-string v4, "NAVI_INFO"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->NAVI_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    .line 13303
    new-instance v4, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    const-string v6, "MANEUVER_INFO"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->MANEUVER_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    .line 13304
    new-instance v6, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    const-string v8, "TOLL_LANE_INFO"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->TOLL_LANE_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    .line 13305
    new-instance v8, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    const-string v10, "MANEUVER_INFO_LIST"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->MANEUVER_INFO_LIST:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    .line 13306
    new-instance v10, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    const-string v12, "SEGMENT_LANE_INFOS_LIST"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->SEGMENT_LANE_INFOS_LIST:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    .line 13307
    new-instance v12, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    const-string v14, "NAVI_FACILITY_LIST"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->NAVI_FACILITY_LIST:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    .line 13308
    new-instance v14, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    const-string v13, "SDINFO_NOT_SET"

    invoke-direct {v14, v13, v15, v2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;-><init>(Ljava/lang/String;II)V

    sput-object v14, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->SDINFO_NOT_SET:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    const/16 v13, 0x8

    new-array v13, v13, [Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    aput-object v0, v13, v2

    aput-object v1, v13, v3

    aput-object v4, v13, v5

    aput-object v6, v13, v7

    aput-object v8, v13, v9

    aput-object v10, v13, v11

    const/4 v0, 0x6

    aput-object v12, v13, v0

    aput-object v14, v13, v15

    .line 13299
    sput-object v13, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->$VALUES:[Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 13310
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13311
    iput p3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->value:I

    return-void
.end method

.method public static forNumber(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 13329
    :pswitch_0
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->NAVI_FACILITY_LIST:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    return-object p0

    .line 13328
    :pswitch_1
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->SEGMENT_LANE_INFOS_LIST:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    return-object p0

    .line 13327
    :pswitch_2
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->MANEUVER_INFO_LIST:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    return-object p0

    .line 13326
    :pswitch_3
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->TOLL_LANE_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    return-object p0

    .line 13325
    :pswitch_4
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->MANEUVER_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    return-object p0

    .line 13324
    :pswitch_5
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->NAVI_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    return-object p0

    .line 13323
    :pswitch_6
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->LANE_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    return-object p0

    .line 13330
    :pswitch_7
    sget-object p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->SDINFO_NOT_SET:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13318
    invoke-static {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->forNumber(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;
    .locals 1

    .line 13299
    const-class v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    return-object p0
.end method

.method public static values()[Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;
    .locals 1

    .line 13299
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->$VALUES:[Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    invoke-virtual {v0}, [Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 13335
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->value:I

    return v0
.end method
