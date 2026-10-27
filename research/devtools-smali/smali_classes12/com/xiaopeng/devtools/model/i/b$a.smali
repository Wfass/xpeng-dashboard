.class Lcom/xiaopeng/devtools/model/i/b$a;
.super Ljava/lang/Object;
.source "UserSettingsModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private mType:Ljava/lang/String;

.field private uR:I

.field final synthetic uS:Lcom/xiaopeng/devtools/model/i/b;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/model/i/b;Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/i/b$a;->uS:Lcom/xiaopeng/devtools/model/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/xiaopeng/devtools/model/i/b$a;->mType:Ljava/lang/String;

    .line 125
    const-string p1, "sys.mcudebug.port"

    const/16 p2, 0x49c1

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/devtools/model/i/b$a;->uR:I

    .line 126
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 130
    nop

    .line 131
    nop

    .line 133
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "127.0.0.1"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 134
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    :try_start_1
    new-instance v3, Ljava/net/InetSocketAddress;

    iget v4, p0, Lcom/xiaopeng/devtools/model/i/b$a;->uR:I

    invoke-direct {v3, v1, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v1, 0x1388

    invoke-virtual {v2, v3, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 136
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 137
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CAN send "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/devtools/model/i/b$a;->mType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    nop

    .line 144
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    :goto_0
    nop

    .line 151
    :try_start_4
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    .line 142
    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_5

    .line 139
    :catch_1
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    .line 142
    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_5

    .line 139
    :catch_3
    move-exception v1

    move-object v2, v0

    .line 140
    :goto_1
    :try_start_5
    const-string v3, "UserSettingsModel"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 142
    if-eqz v0, :cond_0

    .line 144
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 147
    goto :goto_2

    .line 145
    :catch_4
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 151
    :try_start_7
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 154
    :goto_3
    goto :goto_4

    .line 152
    :catch_5
    move-exception v0

    .line 153
    const-string v1, "UserSettingsModel"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 157
    :cond_1
    :goto_4
    return-void

    .line 142
    :catchall_2
    move-exception v1

    :goto_5
    if-eqz v0, :cond_2

    .line 144
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 147
    goto :goto_6

    .line 145
    :catch_6
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    :cond_2
    :goto_6
    if-eqz v2, :cond_3

    .line 151
    :try_start_9
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 154
    goto :goto_7

    .line 152
    :catch_7
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UserSettingsModel"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_3
    :goto_7
    throw v1
.end method
