.class Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;
.super Ljava/lang/Object;
.source "OperationHalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/operation/OperationHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BindingData"
.end annotation


# instance fields
.field private final resourceId:Ljava/lang/String;

.field private final resourceType:I

.field private final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceType"    # I
    .param p2, "resourceId"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    iput p1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;->resourceType:I

    .line 623
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;->resourceId:Ljava/lang/String;

    .line 624
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;->uid:Ljava/lang/String;

    .line 625
    return-void
.end method

.method static synthetic access$2100(Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;

    .line 613
    iget v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;->resourceType:I

    return v0
.end method

.method static synthetic access$2200(Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;

    .line 613
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;

    .line 613
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$BindingData;->uid:Ljava/lang/String;

    return-object v0
.end method
