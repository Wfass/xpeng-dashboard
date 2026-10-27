.class Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView$1;
.super Ljava/lang/Object;
.source "JoystickQuickMenuView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;

    .line 96
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "enable"    # Z

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 100
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->setJoystickEnable(Z)V

    .line 101
    return-void
.end method
