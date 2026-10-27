.class public Lorg/chromium/net/impl/l;
.super Lorg/chromium/net/p;
.source "QuicExceptionImpl.java"


# instance fields
.field private final mNetworkException:Lorg/chromium/net/impl/j;

.field private final mQuicDetailedErrorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lorg/chromium/net/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    new-instance v0, Lorg/chromium/net/impl/j;

    invoke-direct {v0, p1, p2, p3}, Lorg/chromium/net/impl/j;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lorg/chromium/net/impl/l;->mNetworkException:Lorg/chromium/net/impl/j;

    .line 32
    iput p4, p0, Lorg/chromium/net/impl/l;->mQuicDetailedErrorCode:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/chromium/net/impl/l;->mNetworkException:Lorg/chromium/net/impl/j;

    invoke-virtual {v0}, Lorg/chromium/net/impl/j;->a()I

    move-result v0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/chromium/net/impl/l;->mNetworkException:Lorg/chromium/net/impl/j;

    invoke-virtual {v1}, Lorg/chromium/net/impl/j;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", QuicDetailedErrorCode="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/chromium/net/impl/l;->mQuicDetailedErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
