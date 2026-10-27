.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$1;
.super Landroid/util/Singleton;
.source "ConditionSystemProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$SystemPropertiesValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$SystemPropertiesValue;
    .locals 1

    .line 44
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$SystemPropertiesValue;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$SystemPropertiesValue;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$1;->create()Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$SystemPropertiesValue;

    move-result-object v0

    return-object v0
.end method
