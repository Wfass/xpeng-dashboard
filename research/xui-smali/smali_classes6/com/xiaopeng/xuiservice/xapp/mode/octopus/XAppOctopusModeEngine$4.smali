.class Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine$4;
.super Ljava/lang/Object;
.source "XAppOctopusModeEngine.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;

    .line 202
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine$4;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidDeviceStateChanged(II)V
    .locals 2
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .line 205
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine$4;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0069

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 207
    :cond_0
    if-nez p2, :cond_1

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine$4;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->mContext:Landroid/content/Context;

    const v1, 0x7f0e006b

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;I)V

    .line 210
    :cond_1
    :goto_0
    return-void
.end method
