.class Lcom/xiaopeng/libtheme/ThemeController$1;
.super Landroid/os/Handler;
.source "ThemeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libtheme/ThemeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/libtheme/ThemeController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/libtheme/ThemeController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/libtheme/ThemeController;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/libtheme/ThemeController$1;->this$0:Lcom/xiaopeng/libtheme/ThemeController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 52
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController$1;->this$0:Lcom/xiaopeng/libtheme/ThemeController;

    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeController;->access$100(Lcom/xiaopeng/libtheme/ThemeController;)V

    goto :goto_1

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController$1;->this$0:Lcom/xiaopeng/libtheme/ThemeController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lcom/xiaopeng/libtheme/ThemeController;->access$000(Lcom/xiaopeng/libtheme/ThemeController;Z)V

    .line 56
    nop

    .line 61
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
