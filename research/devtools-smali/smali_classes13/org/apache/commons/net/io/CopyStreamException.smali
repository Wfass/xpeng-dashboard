.class public Lorg/apache/commons/net/io/CopyStreamException;
.super Ljava/io/IOException;
.source "CopyStreamException.java"


# static fields
.field private static final serialVersionUID:J = -0x241f5af7ac0a699cL


# instance fields
.field private final totalBytesTransferred:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/io/IOException;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p4}, Lorg/apache/commons/net/io/CopyStreamException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 49
    iput-wide p2, p0, Lorg/apache/commons/net/io/CopyStreamException;->totalBytesTransferred:J

    .line 50
    return-void
.end method
