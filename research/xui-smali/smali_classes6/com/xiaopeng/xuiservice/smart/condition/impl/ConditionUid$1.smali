.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid$1;
.super Landroid/util/Singleton;
.source "ConditionUid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid$1$1;

    const-string v1, "Uid"

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid$1$1;-><init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid$1;Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid$1;->create()Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    move-result-object v0

    return-object v0
.end method
