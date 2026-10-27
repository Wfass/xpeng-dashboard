.class public Lcom/xiaopeng/commonfunc/bean/factorytest/TestResultItem;
.super Ljava/lang/Object;
.source "TestResultItem.java"


# static fields
.field public static final INDEX_4G_CONNECTION:I = 0xe5

.field public static final INDEX_AGINGTEST:I = 0xd0

.field public static final INDEX_BURNTEST:I = 0xc8

.field public static final INDEX_BURNTEST_4G:I = 0xc9

.field public static final INDEX_BURNTEST_BT:I = 0xcb

.field public static final INDEX_BURNTEST_CPUSTRESS:I = 0xcf

.field public static final INDEX_BURNTEST_GPS:I = 0xcc

.field public static final INDEX_BURNTEST_IOZONE:I = 0xcd

.field public static final INDEX_BURNTEST_MEMTESTER:I = 0xce

.field public static final INDEX_BURNTEST_WIFI:I = 0xca

.field public static final INDEX_CDU_CERT:I = 0xe7

.field public static final INDEX_KEYTEST:I = 0xe6

.field public static final INDEX_PSO_CERT:I = 0xea

.field public static final INDEX_SEC_INDIV:I = 0xeb

.field public static final INDEX_TBOX_CERT:I = 0xe8

.field public static final INDEX_TOUCHTEST:I = 0x98

.field public static final INDEX_V18_CDU_CERT:I = 0xec

.field public static final INDEX_WIFI_CERT:I = 0xe9

.field public static final RESULT_ENTER:B = 0x45t

.field public static final RESULT_FAIL:B = 0x46t

.field public static final RESULT_INDEX_SIZE:I = 0x3

.field public static final RESULT_NOTEST:B = 0x4et

.field public static final RESULT_PASS:B = 0x50t

.field public static final RESULT_SIZE:I = 0x4


# instance fields
.field private final mIndex:I

.field private final mStatus:B


# direct methods
.method public constructor <init>(IB)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/TestResultItem;->mIndex:I

    .line 35
    iput-byte p2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/TestResultItem;->mStatus:B

    .line 36
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 39
    const-string v0, "%03d%c"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/TestResultItem;->mIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-byte v2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/TestResultItem;->mStatus:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
