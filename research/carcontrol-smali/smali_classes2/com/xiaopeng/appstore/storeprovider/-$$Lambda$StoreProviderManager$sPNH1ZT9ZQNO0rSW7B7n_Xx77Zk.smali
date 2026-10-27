.class public final synthetic Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$sPNH1ZT9ZQNO0rSW7B7n_Xx77Zk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$sPNH1ZT9ZQNO0rSW7B7n_Xx77Zk;->f$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    iput p2, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$sPNH1ZT9ZQNO0rSW7B7n_Xx77Zk;->f$1:I

    iput-object p3, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$sPNH1ZT9ZQNO0rSW7B7n_Xx77Zk;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$sPNH1ZT9ZQNO0rSW7B7n_Xx77Zk;->f$0:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$sPNH1ZT9ZQNO0rSW7B7n_Xx77Zk;->f$1:I

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$sPNH1ZT9ZQNO0rSW7B7n_Xx77Zk;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->lambda$getAssembleInfoList$2$StoreProviderManager(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
