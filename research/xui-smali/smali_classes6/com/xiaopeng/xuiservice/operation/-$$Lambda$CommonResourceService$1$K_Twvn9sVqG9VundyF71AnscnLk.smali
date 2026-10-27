.class public final synthetic Lcom/xiaopeng/xuiservice/operation/-$$Lambda$CommonResourceService$1$K_Twvn9sVqG9VundyF71AnscnLk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuimanager/operation/OperationResource;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$CommonResourceService$1$K_Twvn9sVqG9VundyF71AnscnLk;->f$0:Lcom/xiaopeng/xuimanager/operation/OperationResource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$CommonResourceService$1$K_Twvn9sVqG9VundyF71AnscnLk;->f$0:Lcom/xiaopeng/xuimanager/operation/OperationResource;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/CommonResourceService$1;->lambda$onEvent$0(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    return-void
.end method
