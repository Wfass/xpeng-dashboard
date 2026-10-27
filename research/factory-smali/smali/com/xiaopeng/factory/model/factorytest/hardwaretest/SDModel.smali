.class public Lcom/xiaopeng/factory/model/factorytest/hardwaretest/SDModel;
.super Ljava/lang/Object;
.source "SDModel.java"


# static fields
.field private static final MESSAGE_READ_WRITE_FAIL:I = 0x2

.field private static final MESSAGE_READ_WRITE_SUCCESS:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandlerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStoragePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/SDModel;->mContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/SDModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/SDModel;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/SDModel;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    .line 34
    return-void
.end method

.method public static synthetic lambda$startReadAndWriteSD$0(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/SDModel;)V
    .locals 9

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "file":Ljava/io/File;
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/SDModel;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 56
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/SDModel;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 58
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x2

    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/SDModel;->mStoragePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v3, "dirFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 60
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/SDModel;->mStoragePath:Ljava/lang/String;

    const-string v6, "test.txt"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 64
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "strings":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 66
    .local v7, "str":Ljava/lang/String;
    const-string v8, "test.txt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 67
    const/4 v5, 0x1

    iput v5, v1, Landroid/os/Message;->what:I

    .line 68
    goto :goto_1

    .line 70
    :cond_1
    iput v2, v1, Landroid/os/Message;->what:I

    .line 71
    const-string v8, ""

    iput-object v8, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    .end local v7    # "str":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 73
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v3    # "dirFile":Ljava/io/File;
    .end local v4    # "strings":[Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    .line 75
    :catch_0
    move-exception v3

    .line 76
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    iput v2, v1, Landroid/os/Message;->what:I

    .line 77
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_4

    .line 80
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 82
    :cond_4
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 83
    goto :goto_4

    .line 79
    :goto_3
    if-eqz v0, :cond_5

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 82
    :cond_5
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    throw v2

    .line 85
    .end local v1    # "message":Landroid/os/Message;
    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method public isSDExist()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/xpeng/test/StorageTest;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/SDModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xpeng/test/StorageTest;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, "storageTest":Lcom/xpeng/test/StorageTest;
    const-string v1, "SD"

    invoke-virtual {v0, v1}, Lcom/xpeng/test/StorageTest;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const/4 v2, 0x1

    return v2

    .line 47
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public startReadAndWriteSD()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/SDModel;->mStoragePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/-$$Lambda$SDModel$XwrhI5YjsFB2EfWMkQxIc2qF2Dg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/-$$Lambda$SDModel$XwrhI5YjsFB2EfWMkQxIc2qF2Dg;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/SDModel;)V

    const-string v2, "ReadWriteThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 86
    return-void
.end method
