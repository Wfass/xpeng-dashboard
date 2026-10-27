.class Lcom/xiaopeng/xui/widget/XSliderNumberIndicator$1;
.super Ljava/lang/Object;
.source "XSliderNumberIndicator.java"

# interfaces
.implements Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;

    .line 14
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator$1;->this$0:Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lxiaopeng/widget/SimpleSlider;IZ)V
    .locals 2
    .param p1, "simpleSlider"    # Lxiaopeng/widget/SimpleSlider;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator$1;->this$0:Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;->setText(Ljava/lang/CharSequence;)V

    .line 18
    return-void
.end method

.method public onStartTrackingTouch(Lxiaopeng/widget/SimpleSlider;)V
    .locals 0
    .param p1, "simpleSlider"    # Lxiaopeng/widget/SimpleSlider;

    .line 23
    return-void
.end method

.method public onStopTrackingTouch(Lxiaopeng/widget/SimpleSlider;)V
    .locals 0
    .param p1, "simpleSlider"    # Lxiaopeng/widget/SimpleSlider;

    .line 28
    return-void
.end method
