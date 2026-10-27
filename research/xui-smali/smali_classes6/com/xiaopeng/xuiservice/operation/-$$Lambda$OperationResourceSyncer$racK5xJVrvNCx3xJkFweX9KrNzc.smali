.class public final synthetic Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationResourceSyncer$racK5xJVrvNCx3xJkFweX9KrNzc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Z

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationResourceSyncer$racK5xJVrvNCx3xJkFweX9KrNzc;->f$0:Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;

    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationResourceSyncer$racK5xJVrvNCx3xJkFweX9KrNzc;->f$1:Z

    iput-boolean p3, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationResourceSyncer$racK5xJVrvNCx3xJkFweX9KrNzc;->f$2:Z

    iput-boolean p4, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationResourceSyncer$racK5xJVrvNCx3xJkFweX9KrNzc;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationResourceSyncer$racK5xJVrvNCx3xJkFweX9KrNzc;->f$0:Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationResourceSyncer$racK5xJVrvNCx3xJkFweX9KrNzc;->f$1:Z

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationResourceSyncer$racK5xJVrvNCx3xJkFweX9KrNzc;->f$2:Z

    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationResourceSyncer$racK5xJVrvNCx3xJkFweX9KrNzc;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;->lambda$sync$0(Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;ZZZ)V

    return-void
.end method
