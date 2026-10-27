.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSRIconClick$SRIconClickValue;
.super Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
.source "ConditionSRIconClick.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/sr/SRIconClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSRIconClick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SRIconClickValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/xiaopeng/xuiservice/sr/SRIconClickListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    const-string v0, "SRIconClick"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected bridge synthetic fetch()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSRIconClick$SRIconClickValue;->fetch()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected fetch()Ljava/lang/String;
    .locals 1

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSRIconClick(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 55
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSRIconClick$SRIconClickValue;->update(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method protected onStartWatch()V
    .locals 1

    .line 45
    invoke-static {}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->getInstance()Lcom/xiaopeng/xuiservice/sr/XuiSrService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->registerSRIconClickListener(Lcom/xiaopeng/xuiservice/sr/SRIconClickListener;)V

    .line 46
    return-void
.end method

.method protected onStopWatch()V
    .locals 1

    .line 50
    invoke-static {}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->getInstance()Lcom/xiaopeng/xuiservice/sr/XuiSrService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->unregisterSRIconClickListener(Lcom/xiaopeng/xuiservice/sr/SRIconClickListener;)V

    .line 51
    return-void
.end method
