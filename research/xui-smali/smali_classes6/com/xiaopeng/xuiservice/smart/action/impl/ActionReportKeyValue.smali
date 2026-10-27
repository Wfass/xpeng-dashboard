.class public Lcom/xiaopeng/xuiservice/smart/action/impl/ActionReportKeyValue;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionBase;
.source "ActionReportKeyValue.java"


# instance fields
.field private final key:Ljava/lang/String;

.field private final single:Z

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "single"    # Z

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionReportKeyValue;->key:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionReportKeyValue;->value:Ljava/lang/String;

    .line 19
    iput-boolean p3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionReportKeyValue;->single:Z

    .line 20
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid argument: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected onStart()V
    .locals 4

    .line 27
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionReportKeyValue;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionReportKeyValue;->value:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionReportKeyValue;->single:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->saveKeyValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$IhbfE451nadgO2nXpF6zTG80Kpg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$IhbfE451nadgO2nXpF6zTG80Kpg;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionReportKeyValue;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 34
    return-void
.end method
