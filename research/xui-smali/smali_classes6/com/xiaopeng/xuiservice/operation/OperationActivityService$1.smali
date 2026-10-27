.class Lcom/xiaopeng/xuiservice/operation/OperationActivityService$1;
.super Landroid/util/Singleton;
.source "OperationActivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/operation/OperationActivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/xiaopeng/xuiservice/operation/OperationActivityService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/xiaopeng/xuiservice/operation/OperationActivityService;
    .locals 2

    .line 10
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/OperationActivityService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationActivityService;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationActivityService$1;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/operation/OperationActivityService$1;->create()Lcom/xiaopeng/xuiservice/operation/OperationActivityService;

    move-result-object v0

    return-object v0
.end method
