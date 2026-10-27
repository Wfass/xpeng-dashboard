.class Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout$3;
.super Ljava/lang/Object;
.source "GamePromptLayout.java"

# interfaces
.implements Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;

    .line 170
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 173
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401210

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->access$200(Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;I)V

    .line 176
    :cond_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 180
    return-void
.end method
