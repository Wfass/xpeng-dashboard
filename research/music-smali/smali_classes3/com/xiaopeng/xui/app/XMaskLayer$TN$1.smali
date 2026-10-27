.class Lcom/xiaopeng/xui/app/XMaskLayer$TN$1;
.super Landroid/os/Handler;
.source "XMaskLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/app/XMaskLayer$TN;-><init>(Landroid/content/Context;IIIZIZLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/app/XMaskLayer$TN;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/app/XMaskLayer$TN;Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN$1;->this$0:Lcom/xiaopeng/xui/app/XMaskLayer$TN;

    invoke-direct {p0, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 205
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 206
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$TN$1;->this$0:Lcom/xiaopeng/xui/app/XMaskLayer$TN;

    invoke-static {p1}, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->access$300(Lcom/xiaopeng/xui/app/XMaskLayer$TN;)V

    :goto_0
    return-void
.end method
