.class public Lcom/xiaopeng/devtools/utils/h;
.super Ljava/lang/Object;
.source "FtpSender.java"


# static fields
.field private static BP:Z


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    .line 64
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/devtools/utils/h;->BP:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 22
    nop

    .line 23
    nop

    .line 25
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaopeng/devtools/utils/h;->la()Lorg/apache/commons/net/ftp/c;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    if-nez v2, :cond_1

    .line 27
    :try_start_1
    const-string p0, "FtpSender"

    const-string p1, "getFTPClient fail........ "

    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    nop

    .line 44
    invoke-static {v2}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 46
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/c;->uE()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 49
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 51
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/c;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 54
    goto :goto_1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 28
    :cond_0
    :goto_1
    return v0

    .line 44
    :catchall_0
    move-exception p0

    goto :goto_a

    .line 41
    :catch_2
    move-exception p0

    move-object v1, v2

    goto :goto_5

    .line 31
    :cond_1
    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    .line 32
    :try_start_4
    invoke-virtual {v2, p1, p2}, Lorg/apache/commons/net/ftp/c;->connect(Ljava/lang/String;I)V

    goto :goto_2

    .line 34
    :cond_2
    invoke-virtual {v2, p1}, Lorg/apache/commons/net/ftp/c;->connect(Ljava/lang/String;)V

    .line 36
    :goto_2
    invoke-virtual {v2, p3, p4}, Lorg/apache/commons/net/ftp/c;->az(Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/c;->bE(Z)V

    .line 38
    const/4 p1, 0x2

    invoke-virtual {v2, p1}, Lorg/apache/commons/net/ftp/c;->fy(I)Z

    .line 40
    invoke-static {v2, p0, p5}, Lcom/xiaopeng/devtools/utils/h;->a(Lorg/apache/commons/net/ftp/c;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 44
    invoke-static {v2}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 46
    :try_start_5
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/c;->uE()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 49
    goto :goto_3

    .line 47
    :catch_3
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 51
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/c;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 54
    :goto_4
    goto :goto_9

    .line 52
    :catch_4
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 44
    :catchall_1
    move-exception p0

    move-object v2, v1

    goto :goto_a

    .line 41
    :catch_5
    move-exception p0

    .line 42
    :goto_5
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 44
    invoke-static {v1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 46
    :try_start_8
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/c;->uE()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 49
    goto :goto_6

    .line 47
    :catch_6
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 51
    :goto_6
    :try_start_9
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/c;->disconnect()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 54
    :goto_7
    goto :goto_8

    .line 52
    :catch_7
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 57
    :cond_3
    :goto_8
    move p0, v0

    :cond_4
    :goto_9
    return p0

    .line 44
    :goto_a
    invoke-static {v2}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 46
    :try_start_a
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/c;->uE()Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 49
    goto :goto_b

    .line 47
    :catch_8
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 51
    :goto_b
    :try_start_b
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/c;->disconnect()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 54
    goto :goto_c

    .line 52
    :catch_9
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 54
    :cond_5
    :goto_c
    throw p0
.end method

.method private static a(Lorg/apache/commons/net/ftp/c;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 71
    nop

    .line 72
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    .line 73
    :try_start_0
    new-array v1, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    .line 74
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/c;->fK(Ljava/lang/String;)Z

    .line 75
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/net/ftp/c;->a(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    if-eqz v1, :cond_0

    :try_start_2
    invoke-static {v2, v1}, Lcom/xiaopeng/devtools/utils/h;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 78
    :cond_0
    :goto_0
    goto :goto_3

    .line 76
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 73
    :catch_1
    move-exception p0

    move-object v2, p0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    :goto_1
    if-eqz v1, :cond_1

    :try_start_4
    invoke-static {v2, v1}, Lcom/xiaopeng/devtools/utils/h;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    move p0, v0

    .line 77
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    :goto_3
    return p0
.end method

.method private static la()Lorg/apache/commons/net/ftp/c;
    .locals 3

    .line 83
    new-instance v0, Lorg/apache/commons/net/ftp/c;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/c;-><init>()V

    .line 84
    new-instance v1, Lorg/apache/commons/net/ftp/d;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/d;-><init>()V

    .line 85
    const-string v2, "Asia/Shanghai"

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/d;->fR(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/c;->a(Lorg/apache/commons/net/ftp/d;)V

    .line 87
    return-object v0
.end method
