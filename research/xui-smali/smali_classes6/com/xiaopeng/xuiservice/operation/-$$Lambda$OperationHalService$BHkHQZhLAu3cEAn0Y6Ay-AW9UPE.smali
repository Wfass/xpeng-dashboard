.class public final synthetic Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$BHkHQZhLAu3cEAn0Y6Ay-AW9UPE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$BHkHQZhLAu3cEAn0Y6Ay-AW9UPE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$BHkHQZhLAu3cEAn0Y6Ay-AW9UPE;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$BHkHQZhLAu3cEAn0Y6Ay-AW9UPE;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$BHkHQZhLAu3cEAn0Y6Ay-AW9UPE;->INSTANCE:Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationHalService$BHkHQZhLAu3cEAn0Y6Ay-AW9UPE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->lambda$queryRemoteResources$6(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Z

    move-result p1

    return p1
.end method
