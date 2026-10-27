.class public final Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;
.super Ljava/lang/Object;
.source "XmartV1Constants.java"


# static fields
.field public static final AES_GCM_NO_PADDING:Ljava/lang/String; = "AES/GCM/NoPadding"

.field public static ALGORITHM_DEFAULT_REVISION:B = 0x0t

.field public static ALGORITHM_IV_LENGTH:I = 0x0

.field public static FIXED_IV:[B = null

.field public static final KEY_MANAGER_PASSWORD:Ljava/lang/String; = "changeit"

.field public static final KEY_STORE_TYPE:Ljava/lang/String; = "XpengAndroidKeyStore"

.field public static LOCAL_KEYS_NUM:I = 0x0

.field public static LOCAL_KEYS_PREFIX:Ljava/lang/String; = null

.field public static final TLS_REVISION_1_2:Ljava/lang/String; = "TLSv1.2"

.field public static final UTF8_ENCODING:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/16 v0, 0xa

    sput v0, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    .line 13
    const-string v0, "XmartV1LocalKey"

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_PREFIX:Ljava/lang/String;

    .line 15
    const/4 v0, 0x1

    sput-byte v0, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->ALGORITHM_DEFAULT_REVISION:B

    .line 16
    const/16 v0, 0xc

    sput v0, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->ALGORITHM_IV_LENGTH:I

    .line 18
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->FIXED_IV:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x58t
        -0x5et
        -0x2dt
        -0x15t
        0x10t
        -0x38t
        -0x15t
        0x6at
        0x43t
        -0x40t
        -0xdt
        -0x18t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
