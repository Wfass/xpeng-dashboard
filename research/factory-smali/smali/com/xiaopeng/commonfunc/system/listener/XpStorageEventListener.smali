.class public Lcom/xiaopeng/commonfunc/system/listener/XpStorageEventListener;
.super Landroid/os/storage/StorageEventListener;
.source "XpStorageEventListener.java"


# static fields
.field public static final MSG_MOUNTED:I = 0x1

.field public static final MSG_TF_MOUNTED:I = 0x3

.field public static final MSG_UNMOUNTED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "XpStorageEventListener"

.field private static final TF_PATH:Ljava/lang/String; = "/storage/extsd"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandlerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mStoragePathString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/system/listener/XpStorageEventListener;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    .line 27
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/system/listener/XpStorageEventListener;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public getStoragePath()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/system/listener/XpStorageEventListener;->mStoragePathString:Ljava/lang/String;

    return-object v0
.end method

.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .line 36
    invoke-super {p0, p1, p2, p3}, Landroid/os/storage/StorageEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "XpStorageEventListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", oldState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const-string v0, "mounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/system/listener/XpStorageEventListener;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 41
    const-string v0, "/storage/extsd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/system/listener/XpStorageEventListener;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 43
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 44
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 45
    .end local v0    # "message":Landroid/os/Message;
    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/system/listener/XpStorageEventListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->getUDiskPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/system/listener/XpStorageEventListener;->mStoragePathString:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/system/listener/XpStorageEventListener;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 48
    .restart local v0    # "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 49
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 50
    .end local v0    # "message":Landroid/os/Message;
    goto :goto_0

    .line 52
    :cond_1
    const-string v0, "unmounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ejecting"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/system/listener/XpStorageEventListener;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 54
    const-string v0, "/storage/extsd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/system/listener/XpStorageEventListener;->mStoragePathString:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/system/listener/XpStorageEventListener;->mHandlerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 57
    .restart local v0    # "message":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 58
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 62
    .end local v0    # "message":Landroid/os/Message;
    :cond_3
    :goto_0
    return-void
.end method
