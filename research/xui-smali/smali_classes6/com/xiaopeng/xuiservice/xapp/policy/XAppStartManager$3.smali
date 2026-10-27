.class Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$3;
.super Ljava/lang/Object;
.source "XAppStartManager.java"

# interfaces
.implements Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    .line 782
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "carPropertyValue"    # Landroid/car/hardware/CarPropertyValue;

    .line 785
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401205

    if-ne v0, v1, :cond_1

    .line 786
    const-string v0, "XAppCheckPolicyStart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCarStatusChanged() gear = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->access$502(I)I

    .line 789
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->access$500()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 790
    .local v0, "delayTime":I
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$3$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$3$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$3;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 797
    .end local v0    # "delayTime":I
    :cond_1
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .line 802
    return-void
.end method
