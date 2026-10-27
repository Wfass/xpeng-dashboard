.class public final synthetic Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$zrJTCCO2ilVho1V3yZm_JDLx9_0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;ILjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$zrJTCCO2ilVho1V3yZm_JDLx9_0;->f$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iput p2, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$zrJTCCO2ilVho1V3yZm_JDLx9_0;->f$1:I

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$zrJTCCO2ilVho1V3yZm_JDLx9_0;->f$2:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$zrJTCCO2ilVho1V3yZm_JDLx9_0;->f$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    iget v1, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$zrJTCCO2ilVho1V3yZm_JDLx9_0;->f$1:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$zrJTCCO2ilVho1V3yZm_JDLx9_0;->f$2:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->lambda$queryRemoteResources$7(Lcom/xiaopeng/xuiservice/operation/OperationHalService;ILjava/util/Map;)V

    return-void
.end method
