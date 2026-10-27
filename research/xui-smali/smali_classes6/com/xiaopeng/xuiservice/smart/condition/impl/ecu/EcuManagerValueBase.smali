.class public abstract Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/EcuManagerValueBase;
.super Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
.source "EcuManagerValueBase.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/EcuManagerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FetchType:",
        "Ljava/lang/Object;",
        "PropertyValueType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
        "TFetchType;>;",
        "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/EcuManagerListener;"
    }
.end annotation


# instance fields
.field protected final propertyId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "propertyId"    # I

    .line 15
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/EcuManagerValueBase;, "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/EcuManagerValueBase<TFetchType;TPropertyValueType;>;"
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;-><init>(Ljava/lang/String;)V

    .line 16
    iput p2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/EcuManagerValueBase;->propertyId:I

    .line 17
    return-void
.end method


# virtual methods
.method protected abstract convert(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPropertyValueType;)TFetchType;"
        }
    .end annotation
.end method

.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "carPropertyValue"    # Landroid/car/hardware/CarPropertyValue;

    .line 21
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/EcuManagerValueBase;, "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/EcuManagerValueBase<TFetchType;TPropertyValueType;>;"
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/EcuManagerValueBase;->propertyId:I

    if-ne v0, v1, :cond_0

    .line 23
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/EcuManagerValueBase;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/EcuManagerValueBase;->update(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EcuManagerValue onChangeEvent, this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", carPropertyValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->ERROR(Ljava/lang/String;)V

    .line 28
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method
