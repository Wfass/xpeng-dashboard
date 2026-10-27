.class public Lcom/alibaba/sdk/android/man/crashreporter/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(I)[B
    .locals 3

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 13
    nop

    .line 14
    rem-int/lit16 v1, p0, 0x100

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 15
    shr-int/lit8 p0, p0, 0x8

    .line 16
    rem-int/lit16 v1, p0, 0x100

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 17
    shr-int/lit8 p0, p0, 0x8

    .line 18
    rem-int/lit16 v1, p0, 0x100

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 19
    shr-int/lit8 p0, p0, 0x8

    .line 20
    rem-int/lit16 p0, p0, 0x100

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    .line 21
    return-object v0
.end method

.method public static e(I)[B
    .locals 3

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 26
    rem-int/lit16 v1, p0, 0x100

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 27
    shr-int/lit8 p0, p0, 0x8

    .line 28
    rem-int/lit16 p0, p0, 0x100

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    .line 29
    return-object v0
.end method
