.class Lcom/xiaopeng/xuiservice/operation/CommonResourceService$1;
.super Ljava/lang/Object;
.source "CommonResourceService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/operation/CommonResourceService;->lambda$init$0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/operation/CommonResourceService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/operation/CommonResourceService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/operation/CommonResourceService;

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/CommonResourceService$1;->this$0:Lcom/xiaopeng/xuiservice/operation/CommonResourceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onEvent$0(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 8
    .param p0, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 53
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getTargetPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "resourceDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 55
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 56
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 57
    .local v4, "file":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/operation/common/"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/xiaopeng/xuiservice/utils/SafeCopyFileUtil;->safeCopyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 56
    .end local v4    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 71
    return-void
.end method

.method public onEvent(ILjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "event"    # Ljava/lang/String;

    .line 45
    const v0, 0x107d7c

    if-ne v0, p3, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    .line 47
    :cond_0
    const-string v0, "CommonResourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New common file resource added/updated, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "sourceObject":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v1

    .line 52
    .local v1, "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    new-instance v2, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$CommonResourceService$1$K_Twvn9sVqG9VundyF71AnscnLk;

    invoke-direct {v2, v1}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$CommonResourceService$1$K_Twvn9sVqG9VundyF71AnscnLk;-><init>(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v0    # "sourceObject":Lorg/json/JSONObject;
    .end local v1    # "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CommonResourceService"

    const-string v2, "handle EVENT_CODE_RESOURCE_ADD error"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method
