.class Lcom/xiaopeng/xuiservice/operation/OperationHalService$2;
.super Ljava/lang/Object;
.source "OperationHalService.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/operation/OperationHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    .line 367
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$2;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Z
    .locals 7
    .param p1, "resourceInfo"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 370
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->getVisibility(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)I

    move-result v0

    .line 371
    .local v0, "visibility":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 372
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$2;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->access$300(Lcom/xiaopeng/xuiservice/operation/OperationHalService;)Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "localUid":Ljava/lang/String;
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 375
    return v4

    .line 377
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v3

    iget v5, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    iget-object v6, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v2}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->queryBinding(ILjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    return v1

    .line 379
    .end local v2    # "localUid":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 367
    check-cast p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService$2;->test(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Z

    move-result p1

    return p1
.end method
