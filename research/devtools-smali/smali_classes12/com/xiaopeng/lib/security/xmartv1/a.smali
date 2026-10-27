.class public final Lcom/xiaopeng/lib/security/xmartv1/a;
.super Ljava/lang/Object;
.source "XmartV1Constants.java"


# static fields
.field public static VT:I

.field public static VU:Ljava/lang/String;

.field public static VV:B

.field public static VW:I

.field public static VX:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/16 v0, 0xa

    sput v0, Lcom/xiaopeng/lib/security/xmartv1/a;->VT:I

    .line 13
    const-string v0, "XmartV1LocalKey"

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/a;->VU:Ljava/lang/String;

    .line 15
    const/4 v0, 0x1

    sput-byte v0, Lcom/xiaopeng/lib/security/xmartv1/a;->VV:B

    .line 16
    const/16 v0, 0xc

    sput v0, Lcom/xiaopeng/lib/security/xmartv1/a;->VW:I

    .line 18
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/a;->VX:[B

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
