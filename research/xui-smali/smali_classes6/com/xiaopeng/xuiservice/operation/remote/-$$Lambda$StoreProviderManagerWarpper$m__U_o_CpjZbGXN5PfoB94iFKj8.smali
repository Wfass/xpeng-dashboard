.class public final synthetic Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$m__U_o_CpjZbGXN5PfoB94iFKj8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Ljava/util/Map;

.field private final synthetic f$2:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$ResourceResult;

.field private final synthetic f$3:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(ILjava/util/Map;Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$ResourceResult;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$m__U_o_CpjZbGXN5PfoB94iFKj8;->f$0:I

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$m__U_o_CpjZbGXN5PfoB94iFKj8;->f$1:Ljava/util/Map;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$m__U_o_CpjZbGXN5PfoB94iFKj8;->f$2:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$ResourceResult;

    iput-object p4, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$m__U_o_CpjZbGXN5PfoB94iFKj8;->f$3:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onQueryFinish(Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;)V
    .locals 4

    iget v0, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$m__U_o_CpjZbGXN5PfoB94iFKj8;->f$0:I

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$m__U_o_CpjZbGXN5PfoB94iFKj8;->f$1:Ljava/util/Map;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$m__U_o_CpjZbGXN5PfoB94iFKj8;->f$2:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$ResourceResult;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$m__U_o_CpjZbGXN5PfoB94iFKj8;->f$3:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->lambda$queryResource_new$1(ILjava/util/Map;Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$ResourceResult;Ljava/util/concurrent/CountDownLatch;Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;)V

    return-void
.end method
