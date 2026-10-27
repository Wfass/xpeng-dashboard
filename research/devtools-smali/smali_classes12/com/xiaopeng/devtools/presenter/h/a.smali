.class public final Lcom/xiaopeng/devtools/presenter/h/a;
.super Landroid/os/Handler;
.source "FastbootUpdatePresenter.java"


# static fields
.field private static zD:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResult:Ljava/lang/String;

.field private zE:Lcom/xiaopeng/devtools/view/update/d;

.field private zF:Ljava/lang/String;

.field private zG:Z

.field private zH:I

.field private zI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "/data/tbox/"

    sput-object v0, Lcom/xiaopeng/devtools/presenter/h/a;->zD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/xiaopeng/devtools/view/update/d;)V
    .locals 0

    .line 69
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/a;->mContext:Landroid/content/Context;

    .line 71
    iput-object p3, p0, Lcom/xiaopeng/devtools/presenter/h/a;->zE:Lcom/xiaopeng/devtools/view/update/d;

    .line 73
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/presenter/h/a;->zG:Z

    .line 74
    const-string p1, "unkown"

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/a;->mResult:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private M(Z)V
    .locals 9

    .line 187
    const-string v0, "FastbootUpdater"

    const-string v1, "handleCheckResult()"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaopeng/devtools/presenter/h/a;->zD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "result"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    .line 190
    nop

    .line 191
    nop

    .line 194
    const/4 p1, 0x0

    const/4 v1, 0x4

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 196
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 197
    const-string v5, "FastbootUpdater"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "udpate result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 199
    const/16 v5, 0x64

    if-ne p1, v5, :cond_0

    .line 200
    const-string p1, "success"

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/a;->mResult:Ljava/lang/String;

    .line 201
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/h/a;->cv(I)V

    goto :goto_0

    .line 203
    :cond_0
    const-string p1, "flash error"

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/a;->mResult:Ljava/lang/String;

    .line 204
    invoke-direct {p0, v3}, Lcom/xiaopeng/devtools/presenter/h/a;->cv(I)V

    .line 207
    :goto_0
    iput-boolean v2, p0, Lcom/xiaopeng/devtools/presenter/h/a;->zG:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 208
    :catch_0
    move-exception p1

    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    .line 211
    :catchall_1
    move-exception v0

    move-object v4, p1

    move-object p1, v0

    move-object v0, v4

    goto :goto_3

    .line 208
    :catch_2
    move-exception v0

    move-object v4, p1

    .line 209
    :goto_1
    :try_start_3
    const-string v0, "FastbootUpdater"

    const-string v2, "fail to get update result"

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 211
    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 212
    :goto_2
    invoke-static {v4}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 214
    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/presenter/h/a;->removeMessages(I)V

    .line 215
    nop

    .line 216
    goto :goto_4

    .line 211
    :catchall_2
    move-exception v0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    :goto_3
    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 212
    invoke-static {v4}, Lcom/xiaopeng/devtools/utils/g;->closeQuietly(Ljava/io/Closeable;)V

    .line 214
    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/presenter/h/a;->removeMessages(I)V

    throw p1

    .line 216
    :cond_1
    if-eqz p1, :cond_2

    .line 217
    iput-boolean v2, p0, Lcom/xiaopeng/devtools/presenter/h/a;->zG:Z

    .line 218
    const-string p1, "timeout"

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/a;->mResult:Ljava/lang/String;

    .line 219
    invoke-direct {p0, v3}, Lcom/xiaopeng/devtools/presenter/h/a;->cv(I)V

    .line 221
    :cond_2
    :goto_4
    return-void
.end method

.method private cv(I)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/a;->zE:Lcom/xiaopeng/devtools/view/update/d;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/a;->zE:Lcom/xiaopeng/devtools/view/update/d;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/update/d;->dC(I)V

    .line 227
    :cond_0
    return-void
.end method

.method private it()V
    .locals 1

    .line 143
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 146
    :cond_0
    return-void
.end method

.method private kh()V
    .locals 2

    .line 149
    const-string v0, "FastbootUpdater"

    const-string v1, "doUpdate()"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/presenter/h/a;->ke()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 151
    iput v1, p0, Lcom/xiaopeng/devtools/presenter/h/a;->zI:I

    .line 152
    iput v1, p0, Lcom/xiaopeng/devtools/presenter/h/a;->zH:I

    .line 153
    invoke-direct {p0, v1}, Lcom/xiaopeng/devtools/presenter/h/a;->cv(I)V

    .line 155
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/h/a;->it()V

    .line 157
    sget-object v0, Lcom/xiaopeng/devtools/presenter/h/a;->zD:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->aX(Ljava/lang/String;)V

    .line 158
    sget-object v0, Lcom/xiaopeng/devtools/presenter/h/a;->zD:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->aW(Ljava/lang/String;)Z

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/a;->zF:Ljava/lang/String;

    sget-object v1, Lcom/xiaopeng/devtools/presenter/h/a;->zD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/utils/g;->M(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/h/a;->zH:I

    goto :goto_0

    .line 162
    :cond_0
    iput-boolean v1, p0, Lcom/xiaopeng/devtools/presenter/h/a;->zG:Z

    .line 163
    const-string v0, "no file to update"

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/a;->mResult:Ljava/lang/String;

    .line 164
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/presenter/h/a;->cv(I)V

    .line 166
    :goto_0
    return-void
.end method

.method private ki()V
    .locals 3

    .line 169
    const-string v0, "FastbootUpdater"

    const-string v1, "handleFileCopyDone()"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    new-instance v0, Lcom/xiaopeng/devtools/presenter/h/-$$Lambda$a$9FXjTbQlTTgYIZ-t63sOE_mbz44;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/h/-$$Lambda$a$9FXjTbQlTTgYIZ-t63sOE_mbz44;-><init>(Lcom/xiaopeng/devtools/presenter/h/a;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 175
    const/4 v0, 0x4

    const-wide/32 v1, 0x493e0

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/devtools/presenter/h/a;->sendEmptyMessageDelayed(IJ)Z

    .line 177
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/h/a;->kl()V

    .line 178
    return-void
.end method

.method private kj()V
    .locals 2

    .line 181
    const-string v0, "FastbootUpdater"

    const-string v1, "handleCopyFileError()"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    const-string v0, "file copy error"

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/a;->mResult:Ljava/lang/String;

    .line 183
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/presenter/h/a;->cv(I)V

    .line 184
    return-void
.end method

.method private kk()V
    .locals 4

    .line 230
    const-string v0, "FastbootUpdater"

    const-string v1, "doFastboot()"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/devtools/presenter/h/a;->zD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fastboot.sh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 235
    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/m;->ba(Ljava/lang/String;)Ljava/lang/Process;

    .line 236
    return-void
.end method

.method private kl()V
    .locals 9

    .line 239
    const-string v0, "FastbootUpdater"

    const-string v1, "watchUpdateResult()"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v2

    .line 243
    invoke-virtual {v2}, Ljava/nio/file/FileSystem;->newWatchService()Ljava/nio/file/WatchService;

    move-result-object v3

    .line 244
    sget-object v4, Lcom/xiaopeng/devtools/presenter/h/a;->zD:Ljava/lang/String;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 245
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/nio/file/WatchEvent$Kind;

    sget-object v6, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Ljava/nio/file/Path;->register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchKey;

    .line 248
    :cond_0
    :goto_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v0, v1, v2}, Ljava/nio/file/WatchService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/WatchKey;

    move-result-object v2

    .line 249
    if-eqz v2, :cond_0

    .line 250
    invoke-interface {v2}, Ljava/nio/file/WatchKey;->pollEvents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/WatchEvent;

    .line 251
    invoke-interface {v5}, Ljava/nio/file/WatchEvent;->kind()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v6

    .line 252
    sget-object v7, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    if-ne v6, v7, :cond_1

    .line 253
    goto :goto_1

    .line 256
    :cond_1
    nop

    .line 257
    invoke-interface {v5}, Ljava/nio/file/WatchEvent;->context()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/Path;

    .line 258
    const-string v6, "FastbootUpdater"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is created"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    const-string v6, "result"

    invoke-interface {v5, v6}, Ljava/nio/file/Path;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 260
    const-string v5, "FastbootUpdater"

    const-string v6, "result is created"

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/xiaopeng/devtools/presenter/h/a;->removeMessages(I)V

    .line 263
    const/4 v5, 0x3

    const-wide/16 v6, 0x3e8

    invoke-virtual {p0, v5, v6, v7}, Lcom/xiaopeng/devtools/presenter/h/a;->sendEmptyMessageDelayed(IJ)Z

    .line 266
    :cond_2
    invoke-interface {v2}, Ljava/nio/file/WatchKey;->reset()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_3

    .line 267
    goto :goto_0

    .line 269
    :cond_3
    goto :goto_1

    .line 272
    :catch_0
    move-exception v2

    .line 273
    const-string v3, "FastbootUpdater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to watch update result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaopeng/devtools/presenter/h/a;->sendEmptyMessageDelayed(IJ)Z

    .line 276
    return-void
.end method

.method private synthetic km()V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/h/a;->kk()V

    .line 172
    return-void
.end method

.method public static synthetic lambda$9FXjTbQlTTgYIZ-t63sOE_mbz44(Lcom/xiaopeng/devtools/presenter/h/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/h/a;->km()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 86
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/presenter/h/a;->M(Z)V

    .line 87
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 88
    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/devtools/presenter/h/a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 81
    :pswitch_1
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/h/a;->kh()V

    .line 82
    nop

    .line 94
    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public ke()Z
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/h/a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/g;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/tbox/fastboot/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/a;->zF:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/h/a;->zF:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public kf()V
    .locals 2

    .line 123
    const-string v0, "FastbootUpdater"

    const-string v1, "startUpdate()"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/h/a;->zG:Z

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/presenter/h/a;->sendEmptyMessage(I)Z

    .line 126
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/h/a;->zG:Z

    .line 128
    :cond_0
    return-void
.end method

.method public kg()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/a;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 132
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 135
    :cond_0
    return-void
.end method

.method public onEvent(Ljava/lang/Integer;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 99
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 107
    :pswitch_0
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/h/a;->kj()V

    .line 108
    goto :goto_0

    .line 101
    :pswitch_1
    iget p1, p0, Lcom/xiaopeng/devtools/presenter/h/a;->zI:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xiaopeng/devtools/presenter/h/a;->zI:I

    .line 102
    iget p1, p0, Lcom/xiaopeng/devtools/presenter/h/a;->zI:I

    iget v0, p0, Lcom/xiaopeng/devtools/presenter/h/a;->zH:I

    if-ne p1, v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/h/a;->ki()V

    .line 112
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
