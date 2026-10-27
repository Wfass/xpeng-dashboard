.class public final synthetic Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$edimtkOP510NWMVHXBtW0xzFzpA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

.field private final synthetic f$1:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$edimtkOP510NWMVHXBtW0xzFzpA;->f$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$edimtkOP510NWMVHXBtW0xzFzpA;->f$1:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$edimtkOP510NWMVHXBtW0xzFzpA;->f$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$edimtkOP510NWMVHXBtW0xzFzpA;->f$1:Ljava/io/PrintWriter;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->lambda$dumpLocalResources$10(Lcom/xiaopeng/xuiservice/operation/OperationHalService;Ljava/io/PrintWriter;I)V

    return-void
.end method
