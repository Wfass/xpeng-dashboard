.class synthetic Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;
.super Ljava/lang/Object;
.source "XpuXNgpNaviInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$car$hardware$xpu$XpuXNgpNaviInfo$SDNavigation$SdInfoCase:[I

.field static final synthetic $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 14323
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->values()[Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$android$car$hardware$xpu$XpuXNgpNaviInfo$SDNavigation$SdInfoCase:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->LANE_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$android$car$hardware$xpu$XpuXNgpNaviInfo$SDNavigation$SdInfoCase:[I

    sget-object v3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->NAVI_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    invoke-virtual {v3}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$android$car$hardware$xpu$XpuXNgpNaviInfo$SDNavigation$SdInfoCase:[I

    sget-object v4, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->MANEUVER_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    invoke-virtual {v4}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$android$car$hardware$xpu$XpuXNgpNaviInfo$SDNavigation$SdInfoCase:[I

    sget-object v5, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->TOLL_LANE_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    invoke-virtual {v5}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$android$car$hardware$xpu$XpuXNgpNaviInfo$SDNavigation$SdInfoCase:[I

    sget-object v6, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->MANEUVER_INFO_LIST:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    invoke-virtual {v6}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$android$car$hardware$xpu$XpuXNgpNaviInfo$SDNavigation$SdInfoCase:[I

    sget-object v7, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->SEGMENT_LANE_INFOS_LIST:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    invoke-virtual {v7}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$android$car$hardware$xpu$XpuXNgpNaviInfo$SDNavigation$SdInfoCase:[I

    sget-object v8, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->NAVI_FACILITY_LIST:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    invoke-virtual {v8}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$android$car$hardware$xpu$XpuXNgpNaviInfo$SDNavigation$SdInfoCase:[I

    sget-object v9, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->SDINFO_NOT_SET:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    invoke-virtual {v9}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 4335
    :catch_7
    invoke-static {}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->values()[Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    :try_start_8
    sget-object v9, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v8, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->IS_INITIALIZED:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v8}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v8

    aput v0, v1, v8
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->MAKE_IMMUTABLE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->VISIT:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->MERGE_FROM_STREAM:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method
