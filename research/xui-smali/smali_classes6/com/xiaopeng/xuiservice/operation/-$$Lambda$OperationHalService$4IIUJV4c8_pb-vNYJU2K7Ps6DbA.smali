.class public final synthetic Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$4IIUJV4c8_pb-vNYJU2K7Ps6DbA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

.field private final synthetic f$1:Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$4IIUJV4c8_pb-vNYJU2K7Ps6DbA;->f$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$4IIUJV4c8_pb-vNYJU2K7Ps6DbA;->f$1:Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$4IIUJV4c8_pb-vNYJU2K7Ps6DbA;->f$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$4IIUJV4c8_pb-vNYJU2K7Ps6DbA;->f$1:Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->lambda$addExpireTask$8(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    return-void
.end method
