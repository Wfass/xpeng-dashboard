.class Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel$SocketRunnable;
.super Ljava/lang/Object;
.source "UserSettingsModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketRunnable"
.end annotation


# static fields
.field private static final CAN_SEND_HEAD:Ljava/lang/String; = "CAN send "

.field private static final DEFAULT_LOCAL_PORT:I = 0x49c1

.field private static final LOCAL_ADDRESS:Ljava/lang/String; = "127.0.0.1"


# instance fields
.field private mPort:I

.field private mType:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel;Ljava/lang/String;)V
    .locals 1
    .param p2, "type"    # Ljava/lang/String;

    .line 151
    iput-object p1, p0, Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel$SocketRunnable;->this$0:Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p2, p0, Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel$SocketRunnable;->mType:Ljava/lang/String;

    .line 153
    const-string p1, "sys.mcudebug.port"

    const/16 v0, 0x49c1

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel$SocketRunnable;->mPort:I

    .line 154
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "socket":Ljava/net/Socket;
    const/4 v1, 0x0

    .line 161
    .local v1, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    const-string v2, "127.0.0.1"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 162
    .local v2, "inetAddress":Ljava/net/InetAddress;
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    move-object v0, v3

    .line 163
    new-instance v3, Ljava/net/InetSocketAddress;

    iget v4, p0, Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel$SocketRunnable;->mPort:I

    invoke-direct {v3, v2, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v4, 0x1388

    invoke-virtual {v0, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 164
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v1, v3

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CAN send "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel$SocketRunnable;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    nop

    .line 172
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    goto :goto_0

    .line 173
    :catch_0
    move-exception v2

    .line 174
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 179
    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 182
    :goto_1
    goto :goto_3

    .line 180
    :catch_1
    move-exception v2

    .line 181
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v3, "UserSettingsModel"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 170
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 167
    :catch_2
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "UserSettingsModel"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    .line 172
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 175
    goto :goto_2

    .line 173
    :catch_3
    move-exception v2

    .line 174
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    .line 179
    :try_start_5
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 185
    :cond_1
    :goto_3
    return-void

    .line 170
    :goto_4
    if-eqz v1, :cond_2

    .line 172
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 175
    goto :goto_5

    .line 173
    :catch_4
    move-exception v3

    .line 174
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_5
    if-eqz v0, :cond_3

    .line 179
    :try_start_7
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 182
    goto :goto_6

    .line 180
    :catch_5
    move-exception v3

    .line 181
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UserSettingsModel"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :goto_6
    throw v2
.end method
