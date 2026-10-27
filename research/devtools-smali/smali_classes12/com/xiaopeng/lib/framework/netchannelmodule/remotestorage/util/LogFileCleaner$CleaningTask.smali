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

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$CleaningTask;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 57
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner$CleaningTask;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;->access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
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

    move-result-object v0

    .line 63
    if-eqz v0, :cond_5

    array-length v1, v0

    const/16 v2, 0x200

    if-gt v1, v2, :cond_1

    goto :goto_2

    .line 67
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 68
    nop

    .line 69
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v6, v0, v4

    .line 70
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sub-long v7, v1, v7

    const-wide/32 v9, 0x240c8400

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 71
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/lib/utils/b;->bn(Ljava/lang/String;)V

    .line 72
    add-int/lit8 v5, v5, 0x1

    .line 75
    :cond_2
    const/16 v6, 0x14

    if-le v5, v6, :cond_3

    .line 76
    goto :goto_1

    .line 69
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    :cond_4
    :goto_1
    return-void

    .line 64
    :cond_5
    :goto_2
    return-void

    .line 59
    :cond_6
    :goto_3
    return-void
.end method
