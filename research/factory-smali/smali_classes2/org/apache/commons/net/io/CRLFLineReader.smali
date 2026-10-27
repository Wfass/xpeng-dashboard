.class public final Lorg/apache/commons/net/io/CRLFLineReader;
.super Ljava/io/BufferedReader;
.source "CRLFLineReader.java"


# static fields
.field private static final CR:C = '\r'

.field private static final LF:C = '\n'


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .param p1, "reader"    # Ljava/io/Reader;

    .line 43
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 44
    return-void
.end method


# virtual methods
.method public readLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 57
    .local v1, "prevWasCR":Z
    iget-object v2, p0, Lorg/apache/commons/net/io/CRLFLineReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 58
    const/4 v3, 0x0

    move v4, v3

    .local v4, "intch":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/io/CRLFLineReader;->read()I

    move-result v5

    .end local v4    # "intch":I
    move v4, v5

    .restart local v4    # "intch":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 60
    if-eqz v1, :cond_0

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v3, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    monitor-exit v2

    return-object v3

    .line 63
    :cond_0
    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    .line 64
    const/4 v1, 0x1

    goto :goto_1

    .line 66
    :cond_1
    const/4 v1, 0x0

    .line 68
    :goto_1
    int-to-char v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 70
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 73
    const/4 v3, 0x0

    return-object v3

    .line 75
    :cond_3
    return-object v2

    .line 70
    .end local v2    # "string":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
