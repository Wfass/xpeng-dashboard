.class final Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$CleaningTask;
.super Ljava/lang/Object;
.source "LogFileCleaner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CleaningTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$CleaningTask;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;
    .param p2, "x1"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$1;

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$CleaningTask;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 57
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$CleaningTask;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;->access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 63
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_5

    array-length v2, v1

    const/16 v3, 0x200

    if-gt v2, v3, :cond_1

    goto :goto_2

    .line 67
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 68
    .local v2, "currentTime":J
    const/4 v4, 0x0

    .line 69
    .local v4, "count":I
    array-length v5, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v1, v6

    .line 70
    .local v7, "fileItem":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long v8, v2, v8

    const-wide/32 v10, 0x240c8400

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 71
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaopeng/lib/utils/FileUtils;->deleteFile(Ljava/lang/String;)V

    .line 72
    add-int/lit8 v4, v4, 0x1

    .line 75
    :cond_2
    const/16 v8, 0x14

    if-le v4, v8, :cond_3

    .line 76
    goto :goto_1

    .line 69
    .end local v7    # "fileItem":Ljava/io/File;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 79
    :cond_4
    :goto_1
    return-void

    .line 64
    .end local v2    # "currentTime":J
    .end local v4    # "count":I
    :cond_5
    :goto_2
    return-void

    .line 59
    .end local v1    # "files":[Ljava/io/File;
    :cond_6
    :goto_3
    return-void
.end method
