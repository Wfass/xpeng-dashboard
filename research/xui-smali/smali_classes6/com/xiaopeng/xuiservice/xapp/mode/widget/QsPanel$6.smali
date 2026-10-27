.class Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$6;
.super Ljava/lang/Object;
.source "QsPanel.java"

# interfaces
.implements Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    .line 469
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$6;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 472
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401210

    if-ne v0, v1, :cond_1

    .line 473
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 474
    .local v0, "evState":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$6;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->access$900(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;Z)V

    .line 476
    .end local v0    # "evState":I
    :cond_1
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 480
    return-void
.end method
