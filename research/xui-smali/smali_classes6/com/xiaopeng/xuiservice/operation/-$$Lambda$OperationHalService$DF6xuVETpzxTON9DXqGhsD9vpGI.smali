.class public final synthetic Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$DF6xuVETpzxTON9DXqGhsD9vpGI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

.field private final synthetic f$1:I

.field private final synthetic f$2:Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;

.field private final synthetic f$3:Z

.field private final synthetic f$4:Z

.field private final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;ILcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$DF6xuVETpzxTON9DXqGhsD9vpGI;->f$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iput p2, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$DF6xuVETpzxTON9DXqGhsD9vpGI;->f$1:I

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$DF6xuVETpzxTON9DXqGhsD9vpGI;->f$2:Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;

    iput-boolean p4, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$DF6xuVETpzxTON9DXqGhsD9vpGI;->f$3:Z

    iput-boolean p5, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$DF6xuVETpzxTON9DXqGhsD9vpGI;->f$4:Z

    iput-boolean p6, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$DF6xuVETpzxTON9DXqGhsD9vpGI;->f$5:Z

    return-void
.end method


# virtual methods
.method public final onResourceUpdated(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$DF6xuVETpzxTON9DXqGhsD9vpGI;->f$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iget v1, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$DF6xuVETpzxTON9DXqGhsD9vpGI;->f$1:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$DF6xuVETpzxTON9DXqGhsD9vpGI;->f$2:Lcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;

    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$DF6xuVETpzxTON9DXqGhsD9vpGI;->f$3:Z

    iget-boolean v4, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$DF6xuVETpzxTON9DXqGhsD9vpGI;->f$4:Z

    iget-boolean v5, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$DF6xuVETpzxTON9DXqGhsD9vpGI;->f$5:Z

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->lambda$setAutoSync$2(Lcom/xiaopeng/xuiservice/operation/OperationHalService;ILcom/xiaopeng/xuiservice/operation/OperationResourceSyncer;ZZZLjava/lang/String;)V

    return-void
.end method
