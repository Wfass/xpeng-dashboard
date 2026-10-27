.class public final synthetic Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$odwiIdka_VIbZonEIkNhJSiYkTo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$odwiIdka_VIbZonEIkNhJSiYkTo;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$odwiIdka_VIbZonEIkNhJSiYkTo;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onQueryFinish(Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$odwiIdka_VIbZonEIkNhJSiYkTo;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$odwiIdka_VIbZonEIkNhJSiYkTo;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->lambda$activityQuery$9(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;)V

    return-void
.end method
