.class Lcom/xiaopeng/xuiservice/operation/OperationService$SingleInstanceHolder;
.super Ljava/lang/Object;
.source "OperationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/operation/OperationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleInstanceHolder"
.end annotation


# static fields
.field static INSTANCE:Lcom/xiaopeng/xuiservice/operation/OperationService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/OperationService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationService;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationService$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/operation/OperationService$SingleInstanceHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/operation/OperationService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
