.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid$1$1;
.super Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
.source "ConditionUid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid$1;->create()Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final accountListener:Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountListener;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid$1;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid$1;
    .param p2, "name"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid$1$1;->this$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid$1;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionUid$1$1$16_nOpXcO8jRmxkhJde6-LZbjas;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionUid$1$1$16_nOpXcO8jRmxkhJde6-LZbjas;-><init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid$1$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid$1$1;->accountListener:Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountListener;

    return-void
.end method

.method public static synthetic lambda$$0(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid$1$1;[Landroid/accounts/Account;)V
    .locals 0
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid$1$1;->update()V

    .line 33
    return-void
.end method


# virtual methods
.method protected bridge synthetic fetch()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid$1$1;->fetch()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected fetch()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onStartWatch()V
    .locals 2

    .line 37
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/AccountUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid$1$1;->accountListener:Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->addAccountListener(Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountListener;)V

    .line 38
    return-void
.end method

.method protected onStopWatch()V
    .locals 2

    .line 42
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/AccountUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionUid$1$1;->accountListener:Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->removeAccountListener(Lcom/xiaopeng/xuiservice/utils/AccountUtil$AccountListener;)V

    .line 43
    return-void
.end method
