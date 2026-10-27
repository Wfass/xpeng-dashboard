.class public Lcom/xiaopeng/commonfunc/bean/factorytest/TestResult;
.super Lcom/activeandroid/Model;
.source "TestResult.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "t_factory_test_result"
.end annotation


# instance fields
.field private isSuccess:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "is_success"
    .end annotation
.end field

.field private itemsResult:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "items_result"
    .end annotation
.end field

.field private target:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "target"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemsResult()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/TestResult;->itemsResult:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/TestResult;->target:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/TestResult;->isSuccess:Z

    return v0
.end method

.method public setItemsResult(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/TestResult;->itemsResult:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/TestResult;->isSuccess:Z

    .line 39
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/TestResult;->target:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TestResult{target=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/TestResult;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isSuccess="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/TestResult;->isSuccess:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", itemsResult=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/factorytest/TestResult;->itemsResult:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
