.class Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$1;
.super Landroid/os/Handler;
.source "ScreenBrightnessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;Landroid/os/Looper;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$1;->this$0:Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$StateEvent;

    .line 48
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$StateEvent;->getScreenId()I

    move-result v0

    .line 49
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$StateEvent;->getState()I

    move-result v1

    .line 50
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$StateEvent;->isForceOpen()Z

    move-result v2

    .line 51
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$StateEvent;->getSource()Ljava/lang/String;

    move-result-object p1

    .line 52
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$1;->this$0:Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;

    invoke-static {v3, v0, v1, v2, p1}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->access$100(Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;IIZLjava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$AngleEvent;

    .line 40
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$AngleEvent;->getScreenId()I

    move-result v0

    .line 41
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$AngleEvent;->getAngle()I

    move-result v1

    .line 42
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$AngleEvent;->isForceOpen()Z

    move-result v2

    .line 43
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$AngleEvent;->getSource()Ljava/lang/String;

    move-result-object p1

    .line 44
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$1;->this$0:Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;

    invoke-static {v3, v0, v1, v2, p1}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->access$000(Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;IIZLjava/lang/String;)V

    :goto_0
    return-void
.end method
