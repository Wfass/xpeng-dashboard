.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSRIconClick$1;
.super Landroid/util/Singleton;
.source "ConditionSRIconClick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSRIconClick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSRIconClick$SRIconClickValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSRIconClick$SRIconClickValue;
    .locals 1

    .line 28
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSRIconClick$SRIconClickValue;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSRIconClick$SRIconClickValue;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSRIconClick$1;->create()Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSRIconClick$SRIconClickValue;

    move-result-object v0

    return-object v0
.end method
