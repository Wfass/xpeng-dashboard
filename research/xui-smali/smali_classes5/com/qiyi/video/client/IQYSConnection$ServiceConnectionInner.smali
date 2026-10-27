.class Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;
.super Ljava/lang/Object;
.source "IQYSConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiyi/video/client/IQYSConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceConnectionInner"
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field final mConnectTimeOutCheck:Ljava/lang/Runnable;

.field volatile mConnected:Z

.field final mHandler:Landroid/os/Handler;

.field private final mNeedRetryOnTimeOut:Z

.field final mRetryConnect:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/qiyi/video/client/IQYSConnection;


# direct methods
.method constructor <init>(Lcom/qiyi/video/client/IQYSConnection;Z)V
    .locals 1
    .param p2, "needRetryOnTimeOut"    # Z

    .line 195
    iput-object p1, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->this$0:Lcom/qiyi/video/client/IQYSConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->mHandler:Landroid/os/Handler;

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IQYSConnection@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->TAG:Ljava/lang/String;

    .line 154
    new-instance p1, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$1;

    invoke-direct {p1, p0}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$1;-><init>(Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;)V

    iput-object p1, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->mRetryConnect:Ljava/lang/Runnable;

    .line 165
    new-instance p1, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$2;

    invoke-direct {p1, p0}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$2;-><init>(Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;)V

    iput-object p1, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->mConnectTimeOutCheck:Ljava/lang/Runnable;

    .line 196
    iput-boolean p2, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->mNeedRetryOnTimeOut:Z

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    .line 148
    invoke-direct {p0}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->isDirty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    .line 148
    iget-boolean v0, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->mNeedRetryOnTimeOut:Z

    return v0
.end method

.method private changeConnectedStatus(Z)V
    .locals 3
    .param p1, "isConnected"    # Z

    .line 249
    iget-boolean v0, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->mConnected:Z

    .line 250
    .local v0, "connected":Z
    iput-boolean p1, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->mConnected:Z

    .line 251
    iget-object v1, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->this$0:Lcom/qiyi/video/client/IQYSConnection;

    invoke-static {v1}, Lcom/qiyi/video/client/IQYSConnection;->access$900(Lcom/qiyi/video/client/IQYSConnection;)Lcom/qiyi/video/client/IQYSConnection$QYSConnectionStatusListener;

    move-result-object v1

    .line 252
    .local v1, "listener":Lcom/qiyi/video/client/IQYSConnection$QYSConnectionStatusListener;
    if-eq v0, p1, :cond_0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->isDirty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->this$0:Lcom/qiyi/video/client/IQYSConnection;

    invoke-interface {v1, v2, p1}, Lcom/qiyi/video/client/IQYSConnection$QYSConnectionStatusListener;->onConnectedStatusChanged(Lcom/qiyi/video/client/IQYSConnection;Z)V

    .line 255
    :cond_0
    return-void
.end method

.method private isDirty()Z
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->this$0:Lcom/qiyi/video/client/IQYSConnection;

    invoke-static {v0}, Lcom/qiyi/video/client/IQYSConnection;->access$800(Lcom/qiyi/video/client/IQYSConnection;)Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method isValid()Z
    .locals 1

    .line 241
    invoke-direct {p0}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->mConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 227
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindingDied: isDirty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->isDirty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qiyi/video/qsrbase/QYSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->changeConnectedStatus(Z)V

    .line 230
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 234
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNullBinding: isDirty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->isDirty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qiyi/video/qsrbase/QYSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->this$0:Lcom/qiyi/video/client/IQYSConnection;

    invoke-static {v0, p0}, Lcom/qiyi/video/client/IQYSConnection;->access$300(Lcom/qiyi/video/client/IQYSConnection;Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;)V

    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->changeConnectedStatus(Z)V

    .line 238
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 201
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected: isDirty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->isDirty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qiyi/video/qsrbase/QYSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->this$0:Lcom/qiyi/video/client/IQYSConnection;

    invoke-static {v0}, Lcom/qiyi/video/client/IQYSConnection;->access$400(Lcom/qiyi/video/client/IQYSConnection;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->this$0:Lcom/qiyi/video/client/IQYSConnection;

    invoke-static {p2}, Lcom/qiyi/video/qys/IQYS$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qiyi/video/qys/IQYS;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qiyi/video/client/IQYSConnection;->access$702(Lcom/qiyi/video/client/IQYSConnection;Lcom/qiyi/video/qys/IQYS;)Lcom/qiyi/video/qys/IQYS;

    .line 206
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->changeConnectedStatus(Z)V

    .line 207
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->this$0:Lcom/qiyi/video/client/IQYSConnection;

    invoke-static {v0}, Lcom/qiyi/video/client/IQYSConnection;->access$600(Lcom/qiyi/video/client/IQYSConnection;)Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;

    move-result-object v0

    .line 208
    .local v0, "listener":Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;
    if-eqz v0, :cond_1

    .line 209
    new-instance v1, Lcom/qiyi/video/qys/IQYSResponse;

    invoke-direct {v1}, Lcom/qiyi/video/qys/IQYSResponse;-><init>()V

    .line 210
    .local v1, "iqysResponse":Lcom/qiyi/video/qys/IQYSResponse;
    const/16 v2, 0xc8

    iput v2, v1, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    .line 211
    new-instance v2, Lcom/qiyi/video/qys/IQYSString;

    const-string v3, "SUCCESS"

    invoke-direct {v2, v3}, Lcom/qiyi/video/qys/IQYSString;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/qiyi/video/qys/IQYSResponse;->mMsg:Lcom/qiyi/video/qys/IQYSStringWrapper;

    .line 212
    invoke-interface {v0, v1}, Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;->onResult(Lcom/qiyi/video/qys/IQYSResponse;)V

    .line 215
    .end local v0    # "listener":Lcom/qiyi/video/client/IQYSConnection$QYSConnectionListener;
    .end local v1    # "iqysResponse":Lcom/qiyi/video/qys/IQYSResponse;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->stopConnectedTimeOutCheck()V

    .line 216
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 220
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected: isDirty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->isDirty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qiyi/video/qsrbase/QYSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->changeConnectedStatus(Z)V

    .line 223
    return-void
.end method

.method startConnectedTimeOutCheck()V
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->mConnectTimeOutCheck:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    return-void
.end method

.method stopConnectedTimeOutCheck()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->mConnectTimeOutCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method
