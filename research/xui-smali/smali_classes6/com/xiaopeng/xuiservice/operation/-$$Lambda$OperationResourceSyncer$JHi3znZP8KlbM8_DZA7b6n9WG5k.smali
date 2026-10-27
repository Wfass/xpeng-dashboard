.class public final synthetic Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationResourceSyncer$JHi3znZP8KlbM8_DZA7b6n9WG5k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;

.field private final synthetic f$1:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationResourceSyncer$JHi3znZP8KlbM8_DZA7b6n9WG5k;->f$0:Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationResourceSyncer$JHi3znZP8KlbM8_DZA7b6n9WG5k;->f$1:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationResourceSyncer$JHi3znZP8KlbM8_DZA7b6n9WG5k;->f$0:Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationResourceSyncer$JHi3znZP8KlbM8_DZA7b6n9WG5k;->f$1:Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->lambda$notifyCompleted$1(Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;)V

    return-void
.end method
