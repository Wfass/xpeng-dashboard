.class Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar$1;
.super Landroid/os/Handler;
.source "XPADAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;Z)V

    goto :goto_0

    .line 36
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;Z)V

    .line 37
    nop

    .line 42
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
