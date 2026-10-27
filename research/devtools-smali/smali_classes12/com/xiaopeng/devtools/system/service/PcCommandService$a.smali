.class Lcom/xiaopeng/devtools/system/service/PcCommandService$a;
.super Ljava/lang/Thread;
.source "PcCommandService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/system/service/PcCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

.field Bt:Ljava/net/ServerSocket;

.field Bu:Z

.field Bv:Z

.field private Bw:Ljava/io/BufferedReader;

.field private final mContext:Landroid/content/Context;

.field uY:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/system/service/PcCommandService;Landroid/content/Context;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->mContext:Landroid/content/Context;

    .line 150
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bu:Z

    .line 151
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bv:Z

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/system/service/PcCommandService$a;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->kS()V

    return-void
.end method

.method private kS()V
    .locals 2

    .line 238
    const-string v0, "PcCommandService"

    const-string v1, "releaseConnection"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bu:Z

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->uY:Ljava/net/Socket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->uY:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->uY:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->uY:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 245
    iput-object v1, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->uY:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 251
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bw:Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bw:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 253
    iput-object v1, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bw:Ljava/io/BufferedReader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 257
    :cond_1
    goto :goto_1

    .line 255
    :catch_1
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 258
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->c(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/a/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->c(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/a/b;->close()V

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->d(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/a/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->d(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/a/a;->hO()V

    .line 265
    :cond_3
    return-void
.end method


# virtual methods
.method public kill()V
    .locals 2

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bv:Z

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->b(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/system/service/PcCommandService$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->interrupt()V

    .line 270
    invoke-direct {p0}, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->kS()V

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bt:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bt:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 279
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->a(Lcom/xiaopeng/devtools/system/service/PcCommandService;Lcom/xiaopeng/devtools/system/service/PcCommandService$a;)Lcom/xiaopeng/devtools/system/service/PcCommandService$a;

    .line 280
    const-string v0, "PcCommandService"

    const-string v1, "Kill ConnectionThread done"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public run()V
    .locals 7

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->a(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "PcCommandService"

    const-string v1, "SERVICE IS STOP"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    return-void

    .line 160
    :cond_0
    const-string v0, "PcCommandService"

    const-string v1, "ConnectionThread start"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    nop

    .line 164
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1}, Ljava/net/ServerSocket;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bt:Ljava/net/ServerSocket;

    .line 165
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bt:Ljava/net/ServerSocket;

    invoke-virtual {v1, v0}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 166
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bt:Ljava/net/ServerSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    const/16 v3, 0x28a0

    invoke-direct {v2, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 170
    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :cond_1
    iget-boolean v3, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bv:Z

    if-eqz v3, :cond_8

    .line 172
    :try_start_1
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v3}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->c(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/a/b;

    move-result-object v3

    if-nez v3, :cond_2

    .line 173
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    new-instance v4, Lcom/xiaopeng/devtools/a/b;

    invoke-direct {v4}, Lcom/xiaopeng/devtools/a/b;-><init>()V

    invoke-static {v3, v4}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->a(Lcom/xiaopeng/devtools/system/service/PcCommandService;Lcom/xiaopeng/devtools/a/b;)Lcom/xiaopeng/devtools/a/b;

    .line 175
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v3}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->c(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/devtools/a/b;->hQ()V

    .line 176
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v3}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->c(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/a/b;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/xiaopeng/devtools/a/b;->bL(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 178
    const-string v3, "PcCommandService"

    const-string v4, "listening to accept"

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bt:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->uY:Ljava/net/Socket;

    .line 181
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bu:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    goto :goto_1

    .line 182
    :catch_1
    move-exception v3

    .line 183
    iput-boolean v1, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bu:Z

    .line 184
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 186
    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->uY:Ljava/net/Socket;

    if-nez v3, :cond_3

    .line 187
    const-string v3, "PcCommandService"

    const-string v4, "connection accept fail"

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iput-boolean v1, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bu:Z

    .line 190
    :cond_3
    iget-boolean v3, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bu:Z

    if-eqz v3, :cond_1

    .line 191
    const-string v3, "PcCommandService"

    const-string v4, "connect to PC Tools socket"

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v3}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->c(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/a/b;

    move-result-object v3

    if-nez v3, :cond_4

    .line 193
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    new-instance v4, Lcom/xiaopeng/devtools/a/b;

    iget-object v5, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->uY:Ljava/net/Socket;

    invoke-direct {v4, v5}, Lcom/xiaopeng/devtools/a/b;-><init>(Ljava/net/Socket;)V

    invoke-static {v3, v4}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->a(Lcom/xiaopeng/devtools/system/service/PcCommandService;Lcom/xiaopeng/devtools/a/b;)Lcom/xiaopeng/devtools/a/b;

    goto :goto_2

    .line 195
    :cond_4
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v3}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->c(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/a/b;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->uY:Ljava/net/Socket;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/devtools/a/b;->a(Ljava/net/Socket;)V

    .line 197
    :goto_2
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v3}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->d(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/a/a;

    move-result-object v3

    if-nez v3, :cond_5

    .line 198
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    new-instance v4, Lcom/xiaopeng/devtools/a/a;

    invoke-direct {v4}, Lcom/xiaopeng/devtools/a/a;-><init>()V

    invoke-static {v3, v4}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->a(Lcom/xiaopeng/devtools/system/service/PcCommandService;Lcom/xiaopeng/devtools/a/a;)Lcom/xiaopeng/devtools/a/a;

    .line 201
    :cond_5
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v3}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->d(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/a/a;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v5}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->c(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/a/b;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/devtools/a/a;->a(Landroid/content/Context;Lcom/xiaopeng/devtools/a/b;)V

    .line 203
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v3}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->c(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/a/b;

    move-result-object v3

    const-string v4, "XPENG TOOLS CONNECTION COMPLETED\r\n"

    invoke-virtual {v3, v4}, Lcom/xiaopeng/devtools/a/b;->write(Ljava/lang/String;)Z

    .line 205
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->uY:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v3, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bw:Ljava/io/BufferedReader;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 209
    goto :goto_3

    .line 206
    :catch_2
    move-exception v3

    .line 207
    invoke-direct {p0}, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->kS()V

    .line 208
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 211
    :goto_3
    iget-boolean v3, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bu:Z

    if-eqz v3, :cond_1

    .line 213
    :try_start_3
    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bw:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 214
    if-eqz v3, :cond_6

    .line 215
    const-string v4, "PcCommandService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "incoming = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    iget-object v4, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v4}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->d(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/a/a;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v5}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->c(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/a/b;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/xiaopeng/devtools/a/a;->a(Ljava/lang/String;Lcom/xiaopeng/devtools/a/b;)Z

    goto :goto_5

    .line 218
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 219
    const-string v3, "PcCommandService"

    const-string v4, "receive garbage value"

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    const/16 v3, 0xa

    if-le v2, v3, :cond_7

    .line 222
    const-string v3, "PcCommandService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop PC Tools socket (Garbage data count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 223
    nop

    .line 224
    :try_start_4
    invoke-direct {p0}, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->kS()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 231
    move v2, v1

    goto :goto_5

    .line 228
    :catch_3
    move-exception v3

    move v2, v1

    goto :goto_4

    :catch_4
    move-exception v3

    .line 229
    :goto_4
    invoke-direct {p0}, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->kS()V

    .line 230
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 231
    :cond_7
    :goto_5
    goto :goto_3

    .line 235
    :cond_8
    return-void
.end method
