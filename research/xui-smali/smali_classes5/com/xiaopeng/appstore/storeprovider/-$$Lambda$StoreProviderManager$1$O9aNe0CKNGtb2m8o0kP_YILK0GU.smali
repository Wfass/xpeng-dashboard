.class public final synthetic Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$1$O9aNe0CKNGtb2m8o0kP_YILK0GU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;

.field private final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$1$O9aNe0CKNGtb2m8o0kP_YILK0GU;->f$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;

    iput-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$1$O9aNe0CKNGtb2m8o0kP_YILK0GU;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$1$O9aNe0CKNGtb2m8o0kP_YILK0GU;->f$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$1$O9aNe0CKNGtb2m8o0kP_YILK0GU;->f$1:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;->lambda$onServiceConnected$0(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;Landroid/os/IBinder;)V

    return-void
.end method
