.class public interface abstract Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;
.super Ljava/lang/Object;
.source "OperationKeyValueService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OperationKeyValueListener"
.end annotation


# virtual methods
.method public onMultipleAdded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 20
    return-void
.end method

.method public onSingleUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 23
    return-void
.end method
