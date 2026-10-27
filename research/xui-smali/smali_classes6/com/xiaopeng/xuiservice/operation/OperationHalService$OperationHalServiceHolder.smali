.class Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalServiceHolder;
.super Ljava/lang/Object;
.source "OperationHalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/operation/OperationHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OperationHalServiceHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/xuiservice/operation/OperationHalService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 124
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalServiceHolder;->instance:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    .locals 1

    .line 123
    sget-object v0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalServiceHolder;->instance:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    return-object v0
.end method
