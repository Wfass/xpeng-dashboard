.class Lcom/xiaopeng/xui/widget/XSimpleSlider$1;
.super Ljava/lang/Object;
.source "XSimpleSlider.java"

# interfaces
.implements Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XSimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XSimpleSlider;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XSimpleSlider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XSimpleSlider;

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider$1;->this$0:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lxiaopeng/widget/SimpleSlider;IZ)V
    .locals 2
    .param p1, "simpleSlider"    # Lxiaopeng/widget/SimpleSlider;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider$1;->this$0:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider$1;->this$0:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->updateVui(Landroid/view/View;)V

    .line 71
    return-void
.end method

.method public onStartTrackingTouch(Lxiaopeng/widget/SimpleSlider;)V
    .locals 0
    .param p1, "simpleSlider"    # Lxiaopeng/widget/SimpleSlider;

    .line 76
    return-void
.end method

.method public onStopTrackingTouch(Lxiaopeng/widget/SimpleSlider;)V
    .locals 0
    .param p1, "simpleSlider"    # Lxiaopeng/widget/SimpleSlider;

    .line 81
    return-void
.end method
