.class public Lorg/chromium/net/impl/a;
.super Lorg/chromium/net/impl/j;
.source "BidirectionalStreamNetworkException.java"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lorg/chromium/net/impl/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/chromium/net/impl/a;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/net/impl/j;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 2

    .line 22
    iget v0, p0, Lorg/chromium/net/impl/a;->c:I

    const/16 v1, -0x166

    if-eq v0, v1, :cond_0

    const/16 v1, -0x160

    if-eq v0, v1, :cond_0

    .line 28
    invoke-super {p0}, Lorg/chromium/net/impl/j;->b()Z

    move-result v0

    return v0

    .line 25
    :cond_0
    sget-boolean v0, Lorg/chromium/net/impl/a;->a:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/chromium/net/impl/a;->b:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
