.class Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar$1;
.super Landroid/os/Handler;
.source "NormalAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;

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

    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->navigationBar:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->setVisibility(I)V

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->navigationBar:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->setVisibility(I)V

    .line 62
    goto :goto_0

    .line 58
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;)V

    .line 59
    nop

    .line 67
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
