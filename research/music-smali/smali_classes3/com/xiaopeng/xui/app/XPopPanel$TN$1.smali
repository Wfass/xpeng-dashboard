.class Lcom/xiaopeng/xui/app/XPopPanel$TN$1;
.super Landroid/os/Handler;
.source "XPopPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/app/XPopPanel$TN;-><init>(Landroid/content/Context;IIIIZIIIZLandroid/view/View;ZZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/app/XPopPanel$TN;Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$1;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-direct {p0, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 409
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 410
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$1;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {p1}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$800(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V

    goto :goto_0

    .line 412
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$1;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    const/16 v0, 0xc8

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$300(Lcom/xiaopeng/xui/app/XPopPanel$TN;I)V

    :goto_0
    return-void
.end method
