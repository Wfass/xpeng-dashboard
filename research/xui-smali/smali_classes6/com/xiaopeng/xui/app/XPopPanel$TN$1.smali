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
    .param p1, "this$0"    # Lcom/xiaopeng/xui/app/XPopPanel$TN;
    .param p2, "arg0"    # Landroid/os/Looper;
    .param p3, "arg1"    # Landroid/os/Handler$Callback;

    .line 402
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$1;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-direct {p0, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 405
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 406
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 411
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$1;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$800(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V

    goto :goto_0

    .line 408
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$1;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$400(Lcom/xiaopeng/xui/app/XPopPanel$TN;I)V

    .line 409
    nop

    .line 414
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
