.class public Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;
.super Ljava/lang/Object;
.source "BugHunterHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$Singleton;,
        Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$BugListener;
    }
.end annotation


# static fields
.field private static final BUG_DIR:Ljava/lang/String; = "/data/xuiservice/.bughunter/"

.field private static final MAX_SAVE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "xpBugHunter"


# instance fields
.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$BugListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 180
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->listeners:Ljava/util/ArrayList;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$1;

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;-><init>()V

    return-void
.end method

.method private static bugDir(I)Ljava/io/File;
    .locals 3
    .param p0, "type"    # I

    .line 124
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/xuiservice/.bughunter/"

    invoke-static {p0}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->localTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static currentSrcNameFile(I)Ljava/io/File;
    .locals 4
    .param p0, "type"    # I

    .line 128
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/xuiservice/.bughunter/"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->localTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".current"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private deleteOldBug(I)V
    .locals 4
    .param p1, "type"    # I

    .line 196
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->bugDir(I)Ljava/io/File;

    move-result-object v0

    .line 197
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    return-void

    .line 201
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 202
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_3

    array-length v2, v1

    const/16 v3, 0x64

    if-gt v2, v3, :cond_1

    goto :goto_1

    .line 206
    :cond_1
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->sortDesc([Ljava/io/File;)V

    .line 208
    nop

    .local v3, "i":I
    :goto_0
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 209
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 208
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 211
    .end local v3    # "i":I
    :cond_2
    return-void

    .line 203
    :cond_3
    :goto_1
    return-void
.end method

.method private static generateBugFileName(Lcom/xiaopeng/xuiservice/bughunter/Bug;)Ljava/lang/String;
    .locals 3
    .param p0, "bug"    # Lcom/xiaopeng/xuiservice/bughunter/Bug;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/xiaopeng/xuiservice/bughunter/Bug;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bughunter/Bug;->srcName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;
    .locals 1

    .line 25
    invoke-static {}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$Singleton;->access$100()Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;

    move-result-object v0

    return-object v0
.end method

.method private static getSrcNameFromBugFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 163
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 164
    .local v0, "dashIndex":I
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 165
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 167
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getTimestampFromBugFileName(Ljava/lang/String;)J
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 152
    :try_start_0
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, "dashIndex":I
    if-lez v0, :cond_0

    .line 154
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 158
    .end local v0    # "dashIndex":I
    :cond_0
    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "xpBugHunter"

    const-string v2, "getTimestampFromBugFileName"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static synthetic lambda$reportBug$0(Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;Lcom/xiaopeng/xuiservice/bughunter/Bug;)V
    .locals 1
    .param p1, "bug"    # Lcom/xiaopeng/xuiservice/bughunter/Bug;

    .line 62
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->saveBug(Lcom/xiaopeng/xuiservice/bughunter/Bug;)V

    .line 63
    iget v0, p1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->localType:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->deleteOldBug(I)V

    .line 64
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->notifyReceiveBug(Lcom/xiaopeng/xuiservice/bughunter/Bug;)V

    .line 65
    return-void
.end method

.method private static localTypeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "localType"    # I

    .line 132
    packed-switch p0, :pswitch_data_0

    .line 142
    const-string v0, "unknown"

    return-object v0

    .line 140
    :pswitch_0
    const-string v0, "APP_ANR"

    return-object v0

    .line 138
    :pswitch_1
    const-string v0, "APP_CRASH"

    return-object v0

    .line 136
    :pswitch_2
    const-string v0, "KERNEL_PANIC"

    return-object v0

    .line 134
    :pswitch_3
    const-string v0, "SYSTEM_SERVER_RESTART"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyReceiveBug(Lcom/xiaopeng/xuiservice/bughunter/Bug;)V
    .locals 3
    .param p1, "bug"    # Lcom/xiaopeng/xuiservice/bughunter/Bug;

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->listeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$BugListener;

    .line 51
    .local v2, "listener":Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$BugListener;
    invoke-interface {v2, p1}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$BugListener;->onReceiveBug(Lcom/xiaopeng/xuiservice/bughunter/Bug;)V

    .line 52
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$BugListener;
    goto :goto_0

    .line 53
    :cond_0
    monitor-exit v0

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private saveBug(Lcom/xiaopeng/xuiservice/bughunter/Bug;)V
    .locals 8
    .param p1, "bug"    # Lcom/xiaopeng/xuiservice/bughunter/Bug;

    .line 171
    iget v0, p1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->localType:I

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->bugDir(I)Ljava/io/File;

    move-result-object v0

    .line 172
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 176
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->generateBugFileName(Lcom/xiaopeng/xuiservice/bughunter/Bug;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    .local v3, "writer":Ljava/io/FileWriter;
    :try_start_1
    iget-object v4, p1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->rawJson:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->rawJson:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :try_start_2
    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 182
    .end local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 180
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catchall_0
    move-exception v4

    move-object v5, v2

    goto :goto_1

    .line 177
    :catch_0
    move-exception v4

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    :catchall_1
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_1
    :try_start_4
    invoke-static {v5, v3}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 180
    .end local v3    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v3

    .line 181
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "xpBugHunter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "save bug: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    iget v3, p1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->localType:I

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->currentSrcNameFile(I)Ljava/io/File;

    move-result-object v1

    .line 185
    :try_start_5
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 186
    .local v3, "writer":Ljava/io/FileWriter;
    :try_start_6
    iget-object v4, p1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->srcName:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->srcName:Ljava/lang/String;

    goto :goto_3

    :cond_2
    const-string v4, ""

    :goto_3
    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 188
    :try_start_7
    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 190
    .end local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_5

    .line 188
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catchall_2
    move-exception v4

    goto :goto_4

    .line 185
    :catch_2
    move-exception v2

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 188
    :goto_4
    :try_start_9
    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 188
    .end local v3    # "writer":Ljava/io/FileWriter;
    :catch_3
    move-exception v2

    .line 189
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "xpBugHunter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save bug: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method private static sortDesc([Ljava/io/File;)V
    .locals 1
    .param p0, "files"    # [Ljava/io/File;

    .line 215
    new-instance v0, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 221
    return-void
.end method


# virtual methods
.method public getBugCount(ILjava/lang/String;)I
    .locals 7
    .param p1, "type"    # I
    .param p2, "srcName"    # Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->bugDir(I)Ljava/io/File;

    move-result-object v0

    .line 70
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 71
    return v2

    .line 74
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 75
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_5

    array-length v3, v1

    if-nez v3, :cond_1

    goto :goto_1

    .line 79
    :cond_1
    if-nez p2, :cond_2

    .line 80
    array-length v2, v1

    return v2

    .line 82
    :cond_2
    const/4 v3, 0x0

    .line 83
    .local v3, "count":I
    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v5, v1, v2

    .line 84
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->getSrcNameFromBugFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 83
    .end local v5    # "file":Ljava/io/File;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_4
    const-string/jumbo v2, "xpBugHunter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBugCount: type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", srcName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return v3

    .line 76
    .end local v3    # "count":I
    :cond_5
    :goto_1
    return v2
.end method

.method public getBugCountAfter(ILjava/lang/String;J)I
    .locals 8
    .param p1, "type"    # I
    .param p2, "srcName"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .line 94
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->bugDir(I)Ljava/io/File;

    move-result-object v0

    .line 95
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 96
    return v2

    .line 99
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 100
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_5

    array-length v3, v1

    if-nez v3, :cond_1

    goto :goto_1

    .line 104
    :cond_1
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->sortDesc([Ljava/io/File;)V

    .line 106
    const/4 v3, 0x0

    .line 107
    .local v3, "count":I
    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v5, v1, v2

    .line 108
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->getTimestampFromBugFileName(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v6, v6, p3

    if-lez v6, :cond_4

    .line 109
    if-eqz p2, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->getSrcNameFromBugFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 110
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 107
    .end local v5    # "file":Ljava/io/File;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_4
    const-string/jumbo v2, "xpBugHunter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBugCountAfter: type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", srcName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", timestamp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return v3

    .line 101
    .end local v3    # "count":I
    :cond_5
    :goto_1
    return v2
.end method

.method public registerBugListener(Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$BugListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$BugListener;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->listeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    monitor-exit v0

    .line 40
    return-void

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportBug(Ljava/lang/String;)V
    .locals 3
    .param p1, "bugInfo"    # Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/bughunter/Bug;->parse(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/bughunter/Bug;

    move-result-object v0

    .line 58
    .local v0, "bug":Lcom/xiaopeng/xuiservice/bughunter/Bug;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/xiaopeng/xuiservice/bughunter/Bug;->localType:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/utils/ResourceExecutor;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/bughunter/-$$Lambda$BugHunterHelper$w3E2Mj8x2ruYxSrLFOrjcIdPZyE;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/xuiservice/bughunter/-$$Lambda$BugHunterHelper$w3E2Mj8x2ruYxSrLFOrjcIdPZyE;-><init>(Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;Lcom/xiaopeng/xuiservice/bughunter/Bug;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 66
    return-void

    .line 59
    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterBugListener(Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$BugListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper$BugListener;

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->listeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 45
    monitor-exit v0

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
