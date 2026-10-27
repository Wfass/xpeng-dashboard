.class Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$1;
.super Ljava/lang/Object;
.source "XInputManagerWrapper.java"

# interfaces
.implements Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;

    .line 156
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .param p1, "carPropertyValue"    # Landroid/car/hardware/CarPropertyValue;

    .line 159
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21602406

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;->access$300(Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper;Landroid/car/hardware/CarPropertyValue;)V

    .line 162
    nop

    .line 166
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .line 171
    return-void
.end method
