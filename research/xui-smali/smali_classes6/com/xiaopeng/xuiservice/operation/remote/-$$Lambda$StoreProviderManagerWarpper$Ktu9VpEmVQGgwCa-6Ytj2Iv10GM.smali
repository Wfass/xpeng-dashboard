.class public final synthetic Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$Ktu9VpEmVQGgwCa-6Ytj2Iv10GM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Lcom/xiaopeng/xuimanager/operation/OperationResource;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;Ljava/lang/String;Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$Ktu9VpEmVQGgwCa-6Ytj2Iv10GM;->f$0:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$Ktu9VpEmVQGgwCa-6Ytj2Iv10GM;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$Ktu9VpEmVQGgwCa-6Ytj2Iv10GM;->f$2:Lcom/xiaopeng/xuimanager/operation/OperationResource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$Ktu9VpEmVQGgwCa-6Ytj2Iv10GM;->f$0:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$Ktu9VpEmVQGgwCa-6Ytj2Iv10GM;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$Ktu9VpEmVQGgwCa-6Ytj2Iv10GM;->f$2:Lcom/xiaopeng/xuimanager/operation/OperationResource;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->lambda$notifyOnDownloadCompleted$2(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;Ljava/lang/String;Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    return-void
.end method
