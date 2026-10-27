.class final Lzipkin2/Endpoint$SerializedForm;
.super Ljava/lang/Object;
.source "Endpoint.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/Endpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SerializedForm"
.end annotation


# static fields
.field static final serialVersionUID:J


# instance fields
.field final ipv4:Ljava/lang/String;

.field final ipv4Bytes:[B

.field final ipv6:Ljava/lang/String;

.field final ipv6Bytes:[B

.field final port:I

.field final serviceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lzipkin2/Endpoint;)V
    .locals 1
    .param p1, "endpoint"    # Lzipkin2/Endpoint;

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iget-object v0, p1, Lzipkin2/Endpoint;->serviceName:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Endpoint$SerializedForm;->serviceName:Ljava/lang/String;

    .line 593
    iget-object v0, p1, Lzipkin2/Endpoint;->ipv4:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Endpoint$SerializedForm;->ipv4:Ljava/lang/String;

    .line 594
    iget-object v0, p1, Lzipkin2/Endpoint;->ipv4Bytes:[B

    iput-object v0, p0, Lzipkin2/Endpoint$SerializedForm;->ipv4Bytes:[B

    .line 595
    iget-object v0, p1, Lzipkin2/Endpoint;->ipv6:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Endpoint$SerializedForm;->ipv6:Ljava/lang/String;

    .line 596
    iget-object v0, p1, Lzipkin2/Endpoint;->ipv6Bytes:[B

    iput-object v0, p0, Lzipkin2/Endpoint$SerializedForm;->ipv6Bytes:[B

    .line 597
    iget v0, p1, Lzipkin2/Endpoint;->port:I

    iput v0, p0, Lzipkin2/Endpoint$SerializedForm;->port:I

    .line 598
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 602
    :try_start_0
    new-instance v0, Lzipkin2/Endpoint;

    invoke-direct {v0, p0}, Lzipkin2/Endpoint;-><init>(Lzipkin2/Endpoint$SerializedForm;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/StreamCorruptedException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
