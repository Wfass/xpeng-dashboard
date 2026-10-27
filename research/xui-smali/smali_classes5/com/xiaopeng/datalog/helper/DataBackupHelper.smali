.class public Lcom/xiaopeng/datalog/helper/DataBackupHelper;
.super Ljava/lang/Object;
.source "DataBackupHelper.java"


# static fields
.field public static final CAN_TAG:Ljava/lang/String; = "candata"

.field public static final CDU_TAG:Ljava/lang/String; = "cdudata"

.field private static final DATA_FILE_DIR:Ljava/lang/String; = "/sdcard/Log/"

.field private static final EXPIRE_TIME_THRESHOLD:J = 0x240c8400L

.field private static final MAX_FILE_LEN:J = 0xa00000L

.field private static final MAX_RETRY_COUNT:I = 0x5

.field private static final OK_CODE:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "DataBackupHelper"

.field public static final TYPE_CAN:I = 0x1

.field public static final TYPE_CDU:I = 0x2

.field private static volatile mInstance:Lcom/xiaopeng/datalog/helper/DataBackupHelper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/datalog/helper/DataBackupHelper;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/datalog/helper/DataBackupHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->initDir(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/datalog/helper/DataBackupHelper;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/datalog/helper/DataBackupHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->deleteExpiredFile(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/datalog/helper/DataBackupHelper;Ljava/lang/String;[BLandroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/datalog/helper/DataBackupHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [B
    .param p3, "x3"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->writeFile(Ljava/lang/String;[BLandroid/content/Context;)V

    return-void
.end method

.method private createNewFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/DateUtils;->formatDate10(J)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "dateStr":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sdcard/Log/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private deleteExpiredFile(Ljava/lang/String;Landroid/content/Context;)V
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 111
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

    .line 112
    .local v0, "canFileDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 115
    :cond_0
    new-instance v1, Lcom/xiaopeng/datalog/helper/DataBackupHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/datalog/helper/DataBackupHelper$2;-><init>(Lcom/xiaopeng/datalog/helper/DataBackupHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "fileNames":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 123
    return-void

    .line 126
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v2, "deleteFileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 130
    .local v5, "fileName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->isExpiredFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 131
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/sdcard/Log/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    .line 133
    .local v6, "isDeleted":Z
    const-string v7, "DataBackupHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is expired, deleted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "isDeleted":Z
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 138
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 139
    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->sendExpireInfo(Ljava/util/List;[Ljava/lang/String;)V

    .line 147
    :cond_4
    return-void
.end method

.method private generateZipFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .line 290
    const-string v0, ".log"

    const-string v1, ".zip"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 230
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

    .line 232
    .local v0, "dataFileDir":Ljava/io/File;
    new-instance v1, Lcom/xiaopeng/datalog/helper/DataBackupHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/datalog/helper/DataBackupHelper$3;-><init>(Lcom/xiaopeng/datalog/helper/DataBackupHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 241
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_3

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 248
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 250
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    .line 253
    .local v2, "currentFile":Ljava/io/File;
    invoke-direct {p0, v2}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->hasTodayFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0xa00000

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    goto :goto_0

    .line 258
    :cond_1
    return-object v2

    .line 255
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->createNewFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    return-object v3

    .line 242
    .end local v2    # "currentFile":Ljava/io/File;
    :cond_3
    :goto_1
    const-string v2, "DataBackupHelper"

    const-string v3, "create a new File"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->createNewFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    return-object v2
.end method

.method public static getInstance()Lcom/xiaopeng/datalog/helper/DataBackupHelper;
    .locals 2

    .line 49
    sget-object v0, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->mInstance:Lcom/xiaopeng/datalog/helper/DataBackupHelper;

    if-nez v0, :cond_1

    .line 50
    const-class v0, Lcom/xiaopeng/datalog/helper/DataBackupHelper;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->mInstance:Lcom/xiaopeng/datalog/helper/DataBackupHelper;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/xiaopeng/datalog/helper/DataBackupHelper;

    invoke-direct {v1}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;-><init>()V

    sput-object v1, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->mInstance:Lcom/xiaopeng/datalog/helper/DataBackupHelper;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 56
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->mInstance:Lcom/xiaopeng/datalog/helper/DataBackupHelper;

    return-object v0
.end method

.method private getTimeFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .line 328
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 329
    .local v0, "index":I
    add-int/lit8 v1, v0, -0x8

    .line 330
    .local v1, "indexBegin":I
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 331
    .local v2, "indexEnd":I
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private hasTodayFile(Ljava/io/File;)Z
    .locals 5
    .param p1, "currentFile"    # Ljava/io/File;

    .line 269
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "currentFileName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/DateUtils;->formatDate10(J)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "dateStr":Ljava/lang/String;
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 272
    .local v2, "index":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "dayStr":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    return v4
.end method

.method private initDir(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 96
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

    .line 97
    .local v0, "datafileDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 101
    :cond_0
    return-void
.end method

.method private isExpiredFile(Ljava/lang/String;)Z
    .locals 17
    .param p1, "fileName"    # Ljava/lang/String;

    .line 203
    move-object/from16 v0, p1

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 204
    .local v1, "indexEnd":I
    add-int/lit8 v2, v1, -0x8

    .line 205
    .local v2, "indexBegin":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_000000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "dateStr":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 209
    .local v4, "timeStamp":J
    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/DateUtils;->formatDate10(J)Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "currentDateStr":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_000000"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, "finalCurrentDateStr":Ljava/lang/String;
    invoke-static {v7}, Lcom/xiaopeng/lib/utils/DateUtils;->dateToStamp(Ljava/lang/String;)J

    move-result-wide v9

    .line 213
    .local v9, "currentDateStamp":J
    invoke-static {v3}, Lcom/xiaopeng/lib/utils/DateUtils;->dateToStamp(Ljava/lang/String;)J

    move-result-wide v11

    .line 215
    .local v11, "fileDateStamp":J
    sub-long v13, v9, v11

    const-wide/32 v15, 0x240c8400

    cmp-long v13, v13, v15

    if-lez v13, :cond_0

    .line 216
    const-string v8, "DataBackupHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " EXPIRED!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    const/4 v8, 0x1

    return v8

    .line 220
    :cond_0
    return v8
.end method

.method private sendExpireInfo(Ljava/util/List;[Ljava/lang/String;)V
    .locals 6
    .param p2, "fileNames"    # [Ljava/lang/String;
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

    .line 302
    .local p1, "deleteFileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 303
    .local v0, "size":I
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->getTimeFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "oldExpireFile":Ljava/lang/String;
    array-length v2, p2

    if-le v2, v0, :cond_0

    .line 306
    aget-object v2, p2, v0

    invoke-direct {p0, v2}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->getTimeFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "newExpireFile":Ljava/lang/String;
    goto :goto_0

    .line 308
    .end local v2    # "newExpireFile":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->getTimeFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 311
    .restart local v2    # "newExpireFile":Ljava/lang/String;
    :goto_0
    const-class v3, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    invoke-static {v3}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v3

    const-class v4, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v3, v4}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 312
    .local v3, "dataLogService":Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;
    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v4

    const-string v5, "data_expire"

    .line 313
    invoke-interface {v4, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v4

    const-string v5, "startTime"

    .line 314
    invoke-interface {v4, v5, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v4

    const-string v5, "endTime"

    .line 315
    invoke-interface {v4, v5, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v4

    .line 316
    invoke-interface {v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    move-result-object v4

    .line 312
    invoke-interface {v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    .line 319
    return-void
.end method

.method private writeFile(Ljava/lang/String;[BLandroid/content/Context;)V
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "context"    # Landroid/content/Context;

    .line 157
    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->getCurrentFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 160
    .local v0, "currentFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/datalog/helper/DataBackupHelper;->generateZipFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "zipFilePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v2, "zipFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    const-string v3, "DataBackupHelper"

    const-string v4, "zipFile exists, delete .zip and write .log"

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 169
    :cond_0
    const/4 v3, 0x0

    .line 172
    .local v3, "randomFile":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v4

    .line 174
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    .line 176
    .local v4, "fileLength":J
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 177
    invoke-virtual {v3, p2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 178
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V

    .line 180
    const-string v6, "DataBackupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "write "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " success, data.length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .end local v4    # "fileLength":J
    nop

    .line 186
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    :goto_0
    goto :goto_1

    .line 187
    :catch_0
    move-exception v4

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 181
    :catch_1
    move-exception v4

    .line 182
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "DataBackupHelper"

    const-string v6, "write file fail!"

    invoke-static {v5, v6, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1

    .line 186
    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 191
    :cond_1
    :goto_1
    return-void

    .line 184
    :goto_2
    if-eqz v3, :cond_2

    .line 186
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 188
    goto :goto_3

    .line 187
    :catch_2
    move-exception v5

    .line 190
    :cond_2
    :goto_3
    throw v4
.end method


# virtual methods
.method public updateFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/xiaopeng/datalog/helper/DataBackupHelper$1;-><init>(Lcom/xiaopeng/datalog/helper/DataBackupHelper;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->post(ILjava/lang/Runnable;)V

    .line 88
    return-void
.end method
