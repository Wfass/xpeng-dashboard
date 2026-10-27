.class synthetic Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;
.super Ljava/lang/Object;
.source "XpuXNgpNaviInfoVW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$car$hardware$xpu$XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase:[I

.field static final synthetic $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 9652
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->values()[Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;->$SwitchMap$android$car$hardware$xpu$XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->LANE_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;->$SwitchMap$android$car$hardware$xpu$XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase:[I

    sget-object v3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->NAVI_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    invoke-virtual {v3}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;->$SwitchMap$android$car$hardware$xpu$XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase:[I

    sget-object v4, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->MANEUVER_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    invoke-virtual {v4}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;->$SwitchMap$android$car$hardware$xpu$XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase:[I

    sget-object v5, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->TOLL_LANE_INFO:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    invoke-virtual {v5}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;->$SwitchMap$android$car$hardware$xpu$XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase:[I

    sget-object v6, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->SDINFO_NOT_SET:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    invoke-virtual {v6}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 4596
    :catch_4
    invoke-static {}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->values()[Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    :try_start_5
    sget-object v6, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v5, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->IS_INITIALIZED:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v5}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->MAKE_IMMUTABLE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->VISIT:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->MERGE_FROM_STREAM:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    sget-object v1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method
