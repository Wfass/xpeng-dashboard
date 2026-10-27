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

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/libtheme/ThemeController$1;->this$0:Lcom/xiaopeng/libtheme/ThemeController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    const/16 p1, 0x3ea

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeController$1;->this$0:Lcom/xiaopeng/libtheme/ThemeController;

    invoke-static {p1}, Lcom/xiaopeng/libtheme/ThemeController;->access$100(Lcom/xiaopeng/libtheme/ThemeController;)V

    goto :goto_1

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController$1;->this$0:Lcom/xiaopeng/libtheme/ThemeController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/xiaopeng/libtheme/ThemeController;->access$000(Lcom/xiaopeng/libtheme/ThemeController;Z)V

    :goto_1
    return-void
.end method
