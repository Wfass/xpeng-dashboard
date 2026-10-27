.class public final synthetic Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$1$j0TZ192gR7W2oyKU6mFR-aRp7lg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$1$j0TZ192gR7W2oyKU6mFR-aRp7lg;->f$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;

    iput-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$1$j0TZ192gR7W2oyKU6mFR-aRp7lg;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$1$j0TZ192gR7W2oyKU6mFR-aRp7lg;->f$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$1$j0TZ192gR7W2oyKU6mFR-aRp7lg;->f$1:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;->lambda$onServiceConnected$0$StoreProviderManager$1(Landroid/os/IBinder;)V

    return-void
.end method
