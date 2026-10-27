.class Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView$2;
.super Ljava/lang/Object;
.source "JoystickQuickMenuView.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;
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

    .line 155
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidDeviceStateChanged(II)V
    .locals 2
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->access$100(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;Z)V

    .line 159
    return-void
.end method
