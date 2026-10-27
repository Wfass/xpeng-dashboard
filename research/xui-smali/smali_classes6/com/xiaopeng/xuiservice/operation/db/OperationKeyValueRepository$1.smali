.class Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository$1;
.super Landroid/util/Singleton;
.source "OperationKeyValueRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;
    .locals 3

    .line 23
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;

    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDatabase;->getInstance()Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDatabase;->operationKeyValueDao()Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;-><init>(Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao;Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository$1;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository$1;->create()Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueRepository;

    move-result-object v0

    return-object v0
.end method
