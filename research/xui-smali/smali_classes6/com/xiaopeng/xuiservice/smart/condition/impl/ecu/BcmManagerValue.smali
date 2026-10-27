.class public abstract Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/BcmManagerValue;
.super Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/BcmManagerValueBase;
.source "BcmManagerValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/BcmManagerValueBase<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "propertyId"    # I

    .line 6
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/BcmManagerValue;, "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/BcmManagerValue<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/BcmManagerValueBase;-><init>(Ljava/lang/String;I)V

    .line 7
    return-void
.end method


# virtual methods
.method protected convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 11
    .local p0, "this":Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/BcmManagerValue;, "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/BcmManagerValue<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    return-object p1
.end method
