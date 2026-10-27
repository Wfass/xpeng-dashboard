.class public final synthetic Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$dczhPHqpHSU5udGTNndWsHctges;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SaveResult;

.field private final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SaveResult;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$dczhPHqpHSU5udGTNndWsHctges;->f$0:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SaveResult;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$dczhPHqpHSU5udGTNndWsHctges;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onQueryFinish(Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$dczhPHqpHSU5udGTNndWsHctges;->f$0:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SaveResult;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$dczhPHqpHSU5udGTNndWsHctges;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->lambda$activitySaveSingle$8(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SaveResult;Ljava/util/concurrent/CountDownLatch;Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;)V

    return-void
.end method
