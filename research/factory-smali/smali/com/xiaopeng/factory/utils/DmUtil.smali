.class public Lcom/xiaopeng/factory/utils/DmUtil;
.super Ljava/lang/Object;
.source "DmUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/factory/utils/DmUtil$KeyTest;,
        Lcom/xiaopeng/factory/utils/DmUtil$TouchTest;,
        Lcom/xiaopeng/factory/utils/DmUtil$IndivTest;,
        Lcom/xiaopeng/factory/utils/DmUtil$NaviTest;,
        Lcom/xiaopeng/factory/utils/DmUtil$LcdTest;,
        Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;,
        Lcom/xiaopeng/factory/utils/DmUtil$HwParam;,
        Lcom/xiaopeng/factory/utils/DmUtil$FeedbackTest;,
        Lcom/xiaopeng/factory/utils/DmUtil$SpdifTest;,
        Lcom/xiaopeng/factory/utils/DmUtil$Faildump;,
        Lcom/xiaopeng/factory/utils/DmUtil$TestResult;,
        Lcom/xiaopeng/factory/utils/DmUtil$AgingTest;,
        Lcom/xiaopeng/factory/utils/DmUtil$CameraTest;,
        Lcom/xiaopeng/factory/utils/DmUtil$BackLightTest;,
        Lcom/xiaopeng/factory/utils/DmUtil$TempTest;,
        Lcom/xiaopeng/factory/utils/DmUtil$PhyTest;,
        Lcom/xiaopeng/factory/utils/DmUtil$UsbTest;,
        Lcom/xiaopeng/factory/utils/DmUtil$SpkTest;,
        Lcom/xiaopeng/factory/utils/DmUtil$LoopTest;,
        Lcom/xiaopeng/factory/utils/DmUtil$FmTest;,
        Lcom/xiaopeng/factory/utils/DmUtil$BluetoothTest;,
        Lcom/xiaopeng/factory/utils/DmUtil$WifiTest;,
        Lcom/xiaopeng/factory/utils/DmUtil$VersName;,
        Lcom/xiaopeng/factory/utils/DmUtil$FactoryMode;
    }
.end annotation


# static fields
.field public static final ARGU_00_00:[B

.field public static final ARGU_00_01:[B

.field public static final ARGU_00_02:[B

.field public static final ARGU_01_00:[B

.field public static final ARGU_01_01:[B

.field public static final ARGU_01_02:[B

.field public static final ARGU_01_03:[B

.field public static final ARGU_01_04:[B

.field public static final ARGU_02_00:[B

.field public static final ARGU_02_01:[B

.field public static final ARGU_02_02:[B

.field public static final ARGU_02_03:[B

.field public static final ARGU_02_04:[B

.field public static final ARGU_04_00:[B

.field public static final ARGU_04_01:[B

.field public static final ARGU_04_02:[B

.field public static final ARGU_04_03:[B

.field public static final ARGU_04_04:[B

.field public static final ARGU_04_05:[B

.field public static final ARGU_04_06:[B

.field public static final ARGU_04_07:[B

.field public static final ARGU_04_08:[B

.field public static final ARGU_04_09:[B

.field public static final ARGU_04_0A:[B

.field public static final ARGU_04_10:[B

.field public static final ENTER_EOL_CMD:[B

.field private static final ENTER_EOL_SUCCESS:[B

.field private static final MSG_IM_READY:[B

.field private static final PREFIX_DM_COMMAND:[B

.field public static final QUIT_EOL_CMD:[B

.field private static final QUIT_EOL_SUCCESS:[B

.field private static final RESPONSE_CMD_NOT_SUPPORT:[B

.field private static final RESPONSE_NEGATIVE:[B

.field private static final RESPONSE_NOTAPPLICABLE:[B

.field private static final RESPONSE_POSITIVE:[B

.field private static final RESPONSE_SUCCESS_HANDLE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5
    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_00_00:[B

    .line 6
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_00_01:[B

    .line 7
    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_00_02:[B

    .line 8
    new-array v1, v0, [B

    fill-array-data v1, :array_3

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_00:[B

    .line 9
    new-array v1, v0, [B

    fill-array-data v1, :array_4

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_01:[B

    .line 10
    new-array v1, v0, [B

    fill-array-data v1, :array_5

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_02:[B

    .line 11
    new-array v1, v0, [B

    fill-array-data v1, :array_6

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_03:[B

    .line 12
    new-array v1, v0, [B

    fill-array-data v1, :array_7

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_04:[B

    .line 13
    new-array v1, v0, [B

    fill-array-data v1, :array_8

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_02_00:[B

    .line 14
    new-array v1, v0, [B

    fill-array-data v1, :array_9

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_02_01:[B

    .line 15
    new-array v1, v0, [B

    fill-array-data v1, :array_a

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_02_02:[B

    .line 16
    new-array v1, v0, [B

    fill-array-data v1, :array_b

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_02_03:[B

    .line 17
    new-array v1, v0, [B

    fill-array-data v1, :array_c

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_02_04:[B

    .line 18
    new-array v1, v0, [B

    fill-array-data v1, :array_d

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_04_00:[B

    .line 19
    new-array v1, v0, [B

    fill-array-data v1, :array_e

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_04_01:[B

    .line 20
    new-array v1, v0, [B

    fill-array-data v1, :array_f

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_04_02:[B

    .line 21
    new-array v1, v0, [B

    fill-array-data v1, :array_10

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_04_03:[B

    .line 22
    new-array v1, v0, [B

    fill-array-data v1, :array_11

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_04_04:[B

    .line 23
    new-array v1, v0, [B

    fill-array-data v1, :array_12

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_04_05:[B

    .line 24
    new-array v1, v0, [B

    fill-array-data v1, :array_13

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_04_06:[B

    .line 25
    new-array v1, v0, [B

    fill-array-data v1, :array_14

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_04_07:[B

    .line 26
    new-array v1, v0, [B

    fill-array-data v1, :array_15

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_04_08:[B

    .line 27
    new-array v1, v0, [B

    fill-array-data v1, :array_16

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_04_09:[B

    .line 28
    new-array v1, v0, [B

    fill-array-data v1, :array_17

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_04_0A:[B

    .line 29
    new-array v1, v0, [B

    fill-array-data v1, :array_18

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_04_10:[B

    .line 31
    new-array v1, v0, [B

    fill-array-data v1, :array_19

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->PREFIX_DM_COMMAND:[B

    .line 32
    new-array v1, v0, [B

    fill-array-data v1, :array_1a

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->RESPONSE_SUCCESS_HANDLE:[B

    .line 33
    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput-byte v4, v2, v3

    sput-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->RESPONSE_POSITIVE:[B

    .line 34
    new-array v2, v1, [B

    const/4 v4, 0x5

    aput-byte v4, v2, v3

    sput-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->RESPONSE_NEGATIVE:[B

    .line 35
    new-array v1, v1, [B

    const/4 v2, 0x6

    aput-byte v2, v1, v3

    sput-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->RESPONSE_NOTAPPLICABLE:[B

    .line 36
    const/4 v1, 0x3

    new-array v2, v1, [B

    fill-array-data v2, :array_1b

    sput-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->RESPONSE_CMD_NOT_SUPPORT:[B

    .line 37
    new-array v2, v4, [B

    fill-array-data v2, :array_1c

    sput-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->MSG_IM_READY:[B

    .line 38
    new-array v2, v0, [B

    fill-array-data v2, :array_1d

    sput-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->ENTER_EOL_CMD:[B

    .line 39
    new-array v0, v0, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/xiaopeng/factory/utils/DmUtil;->QUIT_EOL_CMD:[B

    .line 40
    new-array v0, v1, [B

    fill-array-data v0, :array_1f

    sput-object v0, Lcom/xiaopeng/factory/utils/DmUtil;->ENTER_EOL_SUCCESS:[B

    .line 41
    new-array v0, v1, [B

    fill-array-data v0, :array_20

    sput-object v0, Lcom/xiaopeng/factory/utils/DmUtil;->QUIT_EOL_SUCCESS:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x2t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x1t
        0x2t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x1t
        0x3t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x1t
        0x4t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x2t
        0x0t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x2t
        0x2t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x2t
        0x3t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x2t
        0x4t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x4t
        0x0t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x4t
        0x1t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x4t
        0x2t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x4t
        0x3t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x4t
        0x4t
    .end array-data

    nop

    :array_12
    .array-data 1
        0x4t
        0x5t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x4t
        0x6t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x4t
        0x7t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x4t
        0x8t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x4t
        0x9t
    .end array-data

    nop

    :array_17
    .array-data 1
        0x4t
        0xat
    .end array-data

    nop

    :array_18
    .array-data 1
        0x4t
        0x10t
    .end array-data

    nop

    :array_19
    .array-data 1
        0x31t
        0x1t
    .end array-data

    nop

    :array_1a
    .array-data 1
        0x71t
        0x3t
    .end array-data

    nop

    :array_1b
    .array-data 1
        0x7ft
        0x31t
        0x12t
    .end array-data

    :array_1c
    .array-data 1
        0x52t
        0x45t
        0x41t
        0x44t
        0x59t
    .end array-data

    nop

    :array_1d
    .array-data 1
        0x10t
        0x60t
    .end array-data

    nop

    :array_1e
    .array-data 1
        0x10t
        0x0t
    .end array-data

    nop

    :array_1f
    .array-data 1
        0x10t
        0x60t
        0x4t
    .end array-data

    :array_20
    .array-data 1
        0x10t
        0x0t
        0x4t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static responseCmdNotSupport()[B
    .locals 1

    .line 60
    sget-object v0, Lcom/xiaopeng/factory/utils/DmUtil;->RESPONSE_CMD_NOT_SUPPORT:[B

    return-object v0
.end method

.method public static responseEnterEOLSuccess()[B
    .locals 1

    .line 68
    sget-object v0, Lcom/xiaopeng/factory/utils/DmUtil;->ENTER_EOL_SUCCESS:[B

    return-object v0
.end method

.method public static responseIMReady()[B
    .locals 1

    .line 64
    sget-object v0, Lcom/xiaopeng/factory/utils/DmUtil;->MSG_IM_READY:[B

    return-object v0
.end method

.method public static responseNA([B[B)[B
    .locals 4
    .param p0, "cmd"    # [B
    .param p1, "arg"    # [B

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [[B

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->RESPONSE_SUCCESS_HANDLE:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->RESPONSE_NOTAPPLICABLE:[B

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-static {p1, v2, v3}, Lcom/xiaopeng/factory/utils/DataHelp;->byteSub([BII)[B

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/DataHelp;->byteMerger([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static responseNG([B[B)[B
    .locals 4
    .param p0, "cmd"    # [B
    .param p1, "arg"    # [B

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [[B

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->RESPONSE_SUCCESS_HANDLE:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->RESPONSE_NEGATIVE:[B

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-static {p1, v2, v3}, Lcom/xiaopeng/factory/utils/DataHelp;->byteSub([BII)[B

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/DataHelp;->byteMerger([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static responseOK([B[B)[B
    .locals 4
    .param p0, "cmd"    # [B
    .param p1, "arg"    # [B

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [[B

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->RESPONSE_SUCCESS_HANDLE:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->RESPONSE_POSITIVE:[B

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-static {p1, v2, v3}, Lcom/xiaopeng/factory/utils/DataHelp;->byteSub([BII)[B

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/DataHelp;->byteMerger([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static responseQuitEOLSuccess()[B
    .locals 1

    .line 72
    sget-object v0, Lcom/xiaopeng/factory/utils/DmUtil;->QUIT_EOL_SUCCESS:[B

    return-object v0
.end method

.method public static responseWithValue([B[B[B)[B
    .locals 4
    .param p0, "cmd"    # [B
    .param p1, "arg"    # [B
    .param p2, "value"    # [B

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [[B

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->RESPONSE_SUCCESS_HANDLE:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil;->RESPONSE_POSITIVE:[B

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-static {p1, v2, v3}, Lcom/xiaopeng/factory/utils/DataHelp;->byteSub([BII)[B

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/DataHelp;->byteMerger([[B)[B

    move-result-object v0

    return-object v0
.end method
