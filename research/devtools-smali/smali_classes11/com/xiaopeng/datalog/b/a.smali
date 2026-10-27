.class public Lcom/xiaopeng/datalog/b/a;
.super Ljava/lang/Object;
.source "DataBackupHelper.java"


# static fields
.field private static volatile qs:Lcom/xiaopeng/datalog/b/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/datalog/b/a;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/datalog/b/a;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/datalog/b/a;Ljava/lang/String;[BLandroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/datalog/b/a;->a(Ljava/lang/String;[BLandroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 97
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/Log/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 102
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;[BLandroid/content/Context;)V
    .locals 3

    .line 158
    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/datalog/b/a;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/xiaopeng/datalog/b/a;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 162
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 164
    const-string p3, "DataBackupHelper"

    const-string v1, "zipFile exists, delete .zip and write .log"

    invoke-static {p3, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 170
    :cond_0
    const/4 p3, 0x0

    .line 173
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 175
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    .line 177
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 178
    invoke-virtual {v0, p2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 179
    const-string p3, "\n"

    invoke-virtual {v0, p3}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/FileDescriptor;->sync()V

    .line 181
    const-string p3, "DataBackupHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " success, data.length:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    nop

    .line 187
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 185
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 182
    :catch_0
    move-exception p1

    move-object p3, v0

    goto :goto_0

    .line 185
    :catchall_1
    move-exception p1

    move-object v0, p3

    goto :goto_3

    .line 182
    :catch_1
    move-exception p1

    .line 183
    :goto_0
    :try_start_3
    const-string p2, "DataBackupHelper"

    const-string v0, "write file fail!"

    invoke-static {p2, v0, p1}, Lcom/xiaopeng/lib/utils/c;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 185
    if-eqz p3, :cond_1

    .line 187
    :try_start_4
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 189
    :goto_1
    goto :goto_2

    .line 188
    :catch_2
    move-exception p1

    goto :goto_1

    .line 192
    :cond_1
    :goto_2
    return-void

    .line 185
    :goto_3
    if-eqz v0, :cond_2

    .line 187
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 189
    goto :goto_4

    .line 188
    :catch_3
    move-exception p2

    .line 191
    :cond_2
    :goto_4
    throw p1
.end method

.method private a(Ljava/util/List;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 303
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 304
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/xiaopeng/datalog/b/a;->bl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    array-length v2, p2

    if-le v2, v0, :cond_0

    .line 307
    aget-object p1, p2, v0

    invoke-direct {p0, p1}, Lcom/xiaopeng/datalog/b/a;->bl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 309
    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/datalog/b/a;->bl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 315
    :goto_0
    nop

    .line 317
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/c;->po()Z

    move-result p2

    .line 319
    if-nez p2, :cond_1

    .line 320
    const-class p2, Lcom/xiaopeng/datalog/a;

    invoke-static {p2}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object p2

    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {p2, v0}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 321
    invoke-interface {p2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v0

    const-string v2, "data_expire"

    .line 322
    invoke-interface {v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v0

    const-string v2, "startTime"

    .line 323
    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v0

    const-string v1, "endTime"

    .line 324
    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p1

    .line 325
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    move-result-object p1

    .line 321
    invoke-interface {p2, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    .line 329
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/datalog/b/a;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/datalog/b/a;->b(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private b(Ljava/lang/String;Landroid/content/Context;)V
    .locals 9

    .line 112
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/Log/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 116
    :cond_0
    new-instance v1, Lcom/xiaopeng/datalog/b/a$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/datalog/b/a$2;-><init>(Lcom/xiaopeng/datalog/b/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 123
    if-nez v0, :cond_1

    .line 124
    return-void

    .line 127
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 131
    invoke-direct {p0, v4}, Lcom/xiaopeng/datalog/b/a;->bj(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 132
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sdcard/Log/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    .line 134
    const-string v6, "DataBackupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is expired, deleted "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 140
    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/datalog/b/a;->a(Ljava/util/List;[Ljava/lang/String;)V

    .line 148
    :cond_4
    return-void
.end method

.method private bj(Ljava/lang/String;)Z
    .locals 6

    .line 204
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 205
    add-int/lit8 v1, v0, -0x8

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_000000"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 210
    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/a;->p(J)Ljava/lang/String;

    move-result-object v1

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_000000"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/a;->dI(Ljava/lang/String;)J

    move-result-wide v1

    .line 214
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/a;->dI(Ljava/lang/String;)J

    move-result-wide v4

    .line 216
    sub-long/2addr v1, v4

    const-wide/32 v4, 0x240c8400

    cmp-long v0, v1, v4

    if-lez v0, :cond_0

    .line 217
    const-string v0, "DataBackupHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " EXPIRED!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    const/4 p1, 0x1

    return p1

    .line 221
    :cond_0
    return v3
.end method

.method private bk(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 291
    const-string v0, ".log"

    const-string v1, ".zip"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private bl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 338
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 339
    add-int/lit8 v0, v0, -0x8

    .line 340
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 341
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 5

    .line 231
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/Log/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    new-instance v1, Lcom/xiaopeng/datalog/b/a$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/datalog/b/a$3;-><init>(Lcom/xiaopeng/datalog/b/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_3

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 249
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 251
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 254
    invoke-direct {p0, v0}, Lcom/xiaopeng/datalog/b/a;->e(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0xa00000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    goto :goto_0

    .line 259
    :cond_1
    return-object v0

    .line 256
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/datalog/b/a;->d(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 243
    :cond_3
    :goto_1
    const-string v0, "DataBackupHelper"

    const-string v1, "create a new File"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/datalog/b/a;->d(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/a;->p(J)Ljava/lang/String;

    move-result-object v0

    .line 287
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sdcard/Log/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".log"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private e(Ljava/io/File;)Z
    .locals 3

    .line 270
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/a;->p(J)Ljava/lang/String;

    move-result-object v0

    .line 272
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 273
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public static eV()Lcom/xiaopeng/datalog/b/a;
    .locals 2

    .line 50
    sget-object v0, Lcom/xiaopeng/datalog/b/a;->qs:Lcom/xiaopeng/datalog/b/a;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lcom/xiaopeng/datalog/b/a;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/xiaopeng/datalog/b/a;->qs:Lcom/xiaopeng/datalog/b/a;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/xiaopeng/datalog/b/a;

    invoke-direct {v1}, Lcom/xiaopeng/datalog/b/a;-><init>()V

    sput-object v1, Lcom/xiaopeng/datalog/b/a;->qs:Lcom/xiaopeng/datalog/b/a;

    .line 55
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 57
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/datalog/b/a;->qs:Lcom/xiaopeng/datalog/b/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 67
    new-instance v0, Lcom/xiaopeng/datalog/b/a$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/xiaopeng/datalog/b/a$1;-><init>(Lcom/xiaopeng/datalog/b/a;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/j;->a(ILjava/lang/Runnable;)V

    .line 89
    return-void
.end method
