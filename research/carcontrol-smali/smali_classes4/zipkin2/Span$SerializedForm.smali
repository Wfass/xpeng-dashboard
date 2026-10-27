.class final Lzipkin2/Span$SerializedForm;
.super Ljava/lang/Object;
.source "Span.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/Span;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final bytes:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 813
    iput-object p1, p0, Lzipkin2/Span$SerializedForm;->bytes:[B

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 818
    :try_start_0
    sget-object v0, Lzipkin2/codec/SpanBytesDecoder;->PROTO3:Lzipkin2/codec/SpanBytesDecoder;

    iget-object v1, p0, Lzipkin2/Span$SerializedForm;->bytes:[B

    invoke-virtual {v0, v1}, Lzipkin2/codec/SpanBytesDecoder;->decodeOne([B)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 820
    new-instance v1, Ljava/io/StreamCorruptedException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
