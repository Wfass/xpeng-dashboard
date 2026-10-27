.class public Lcom/xiaopeng/devtools/utils/s;
.super Ljava/lang/Object;
.source "TftpSender.java"


# static fields
.field private static BP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/devtools/utils/s;->BP:Z

    return-void
.end method

.method public static p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    sget-boolean v0, Lcom/xiaopeng/devtools/utils/s;->BP:Z

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lcom/xiaopeng/devtools/utils/s$1;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/utils/s$1;-><init>()V

    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Lcom/xiaopeng/devtools/utils/tftp/c;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/utils/tftp/c;-><init>()V

    .line 30
    :goto_0
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/utils/tftp/c;->fu(I)V

    .line 37
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 42
    nop

    .line 46
    :try_start_1
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/utils/tftp/c;->open()V

    .line 47
    const/4 v3, 0x1

    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    const/16 v6, 0x2000

    move-object v1, v0

    move-object v2, p1

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/devtools/utils/tftp/c;->a(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/utils/tftp/c;->close()V

    .line 58
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    goto :goto_1

    .line 59
    :catch_0
    move-exception p0

    .line 60
    const-string p1, "TftpSender"

    invoke-static {p1, p0}, Lcom/xiaopeng/lib/utils/c;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 62
    nop

    .line 63
    :goto_1
    return-void

    .line 56
    :catchall_0
    move-exception p0

    goto :goto_2

    .line 51
    :catch_1
    move-exception p0

    .line 52
    :try_start_3
    const-string p1, "TftpSender"

    invoke-static {p1, p0}, Lcom/xiaopeng/lib/utils/c;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 53
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 48
    :catch_2
    move-exception p0

    .line 49
    const-string p1, "TftpSender"

    invoke-static {p1, p0}, Lcom/xiaopeng/lib/utils/c;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 50
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    :goto_2
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/utils/tftp/c;->close()V

    .line 58
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 61
    goto :goto_3

    .line 59
    :catch_3
    move-exception p1

    .line 60
    const-string p2, "TftpSender"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/c;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 61
    :goto_3
    throw p0

    .line 38
    :catch_4
    move-exception p0

    .line 39
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/utils/tftp/c;->close()V

    .line 40
    const-string p1, "TftpSender"

    invoke-static {p1, p0}, Lcom/xiaopeng/lib/utils/c;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 41
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
