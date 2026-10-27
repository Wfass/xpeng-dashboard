.class final Lcom/xiaopeng/privacymanager/PrivacyServiceManager$PrivacyServiceConnection;
.super Ljava/lang/Object;
.source "PrivacyServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/privacymanager/PrivacyServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrivacyServiceConnection"
.end annotation


# instance fields
.field private mConnCallback:Landroid/content/ServiceConnection;

.field final synthetic this$0:Lcom/xiaopeng/privacymanager/PrivacyServiceManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/privacymanager/PrivacyServiceManager;Landroid/content/ServiceConnection;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$PrivacyServiceConnection;->this$0:Lcom/xiaopeng/privacymanager/PrivacyServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p2, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$PrivacyServiceConnection;->mConnCallback:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected ComponentName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "IBinder : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrivacyServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$PrivacyServiceConnection;->this$0:Lcom/xiaopeng/privacymanager/PrivacyServiceManager;

    invoke-static {p2}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/privacyservice/IPrivacyService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->access$402(Lcom/xiaopeng/privacymanager/PrivacyServiceManager;Lcom/xiaopeng/privacyservice/IPrivacyService;)Lcom/xiaopeng/privacyservice/IPrivacyService;

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$PrivacyServiceConnection;->mConnCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected ComponentName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrivacyServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$PrivacyServiceConnection;->this$0:Lcom/xiaopeng/privacymanager/PrivacyServiceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/privacymanager/PrivacyServiceManager;->access$402(Lcom/xiaopeng/privacymanager/PrivacyServiceManager;Lcom/xiaopeng/privacyservice/IPrivacyService;)Lcom/xiaopeng/privacyservice/IPrivacyService;

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$PrivacyServiceConnection;->mConnCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public setPrivacyServiceConnection(Landroid/content/ServiceConnection;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/xiaopeng/privacymanager/PrivacyServiceManager$PrivacyServiceConnection;->mConnCallback:Landroid/content/ServiceConnection;

    return-void
.end method
