.class Lorg/apache/commons/net/ftp/c$a;
.super Ljava/lang/Object;
.source "FTPClient.java"

# interfaces
.implements Lorg/apache/commons/net/io/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/ftp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final arb:Lorg/apache/commons/net/ftp/c;

.field private final arc:J

.field private final ard:I

.field private are:I

.field private time:J


# direct methods
.method constructor <init>(Lorg/apache/commons/net/ftp/c;JI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 3869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3866
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/net/ftp/c$a;->time:J

    .line 3870
    iput-wide p2, p0, Lorg/apache/commons/net/ftp/c$a;->arc:J

    .line 3871
    iput-object p1, p0, Lorg/apache/commons/net/ftp/c$a;->arb:Lorg/apache/commons/net/ftp/c;

    .line 3872
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/c;->getSoTimeout()I

    move-result p2

    iput p2, p0, Lorg/apache/commons/net/ftp/c$a;->ard:I

    .line 3873
    invoke-virtual {p1, p4}, Lorg/apache/commons/net/ftp/c;->setSoTimeout(I)V

    .line 3874
    return-void
.end method


# virtual methods
.method public a(JIJ)V
    .locals 2

    .line 3884
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 3885
    iget-wide p3, p0, Lorg/apache/commons/net/ftp/c$a;->time:J

    sub-long p3, p1, p3

    iget-wide v0, p0, Lorg/apache/commons/net/ftp/c$a;->arc:J

    cmp-long p3, p3, v0

    if-lez p3, :cond_0

    .line 3887
    :try_start_0
    iget-object p3, p0, Lorg/apache/commons/net/ftp/c$a;->arb:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {p3}, Lorg/apache/commons/net/ftp/c;->uq()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3890
    :catch_0
    move-exception p3

    goto :goto_1

    .line 3888
    :catch_1
    move-exception p3

    .line 3889
    iget p3, p0, Lorg/apache/commons/net/ftp/c$a;->are:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lorg/apache/commons/net/ftp/c$a;->are:I

    .line 3892
    :goto_0
    nop

    .line 3893
    :goto_1
    iput-wide p1, p0, Lorg/apache/commons/net/ftp/c$a;->time:J

    .line 3895
    :cond_0
    return-void
.end method

.method uP()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3899
    :goto_0
    :try_start_0
    iget v0, p0, Lorg/apache/commons/net/ftp/c$a;->are:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/commons/net/ftp/c$a;->are:I

    if-lez v0, :cond_0

    .line 3900
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c$a;->arb:Lorg/apache/commons/net/ftp/c;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/c;->uo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3903
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c$a;->arb:Lorg/apache/commons/net/ftp/c;

    iget v1, p0, Lorg/apache/commons/net/ftp/c$a;->ard:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/c;->setSoTimeout(I)V

    .line 3904
    nop

    .line 3905
    return-void

    .line 3903
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/net/ftp/c$a;->arb:Lorg/apache/commons/net/ftp/c;

    iget v2, p0, Lorg/apache/commons/net/ftp/c$a;->ard:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/c;->setSoTimeout(I)V

    throw v0
.end method
