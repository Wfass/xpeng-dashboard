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

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onServiceConnected$0$StoreProviderManager$1(Landroid/os/IBinder;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->access$200(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StoreProviderManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->access$000(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$1$j0TZ192gR7W2oyKU6mFR-aRp7lg;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$1$j0TZ192gR7W2oyKU6mFR-aRp7lg;-><init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;Landroid/os/IBinder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StoreProviderManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->access$000(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    invoke-static {v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->access$100(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
