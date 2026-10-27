.class Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;
.super Ljava/lang/Object;
.source "StoreProviderManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onServiceConnected$0(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->access$200(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "service"
        }
    .end annotation

    .line 67
    const-string v0, "StoreProviderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    invoke-static {v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->access$000(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    const-string v0, "StoreProviderManager"

    const-string v1, "onServiceConnected: work handler is not init!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    invoke-static {v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->access$000(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$1$O9aNe0CKNGtb2m8o0kP_YILK0GU;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$1$O9aNe0CKNGtb2m8o0kP_YILK0GU;-><init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 77
    const-string v0, "StoreProviderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    invoke-static {v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->access$000(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    const-string v0, "StoreProviderManager"

    const-string v1, "onServiceDisconnected: work handler is not init!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    invoke-static {v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->access$000(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    invoke-static {v1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->access$100(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    return-void
.end method
