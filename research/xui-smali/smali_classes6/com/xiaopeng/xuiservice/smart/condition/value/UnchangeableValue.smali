.class public abstract Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue;
.super Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
.source "UnchangeableValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
        "TC;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 10
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue<TC;>;"
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue;->fetch()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue;->currentValue:Ljava/lang/Object;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " init value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue;->currentValue:Ljava/lang/Object;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->DEBUG(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected displayName()Ljava/lang/String;
    .locals 2

    .line 47
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue<TC;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeableValue <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final onStartWatch()V
    .locals 0

    .line 18
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue<TC;>;"
    return-void
.end method

.method protected final onStopWatch()V
    .locals 0

    .line 23
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue<TC;>;"
    return-void
.end method

.method public final register(Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener<",
            "TC;>;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue<TC;>;"
    .local p1, "listener":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener<TC;>;"
    return-void
.end method

.method public final unregister(Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener<",
            "TC;>;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue<TC;>;"
    .local p1, "listener":Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener;, "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue$ValueChangeListener<TC;>;"
    return-void
.end method

.method public final update(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 28
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue<TC;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TC;"
    return-void
.end method

.method public final updateWithoutNotifyChange(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue;, "Lcom/xiaopeng/xuiservice/smart/condition/value/UnchangeableValue<TC;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TC;"
    return-void
.end method
