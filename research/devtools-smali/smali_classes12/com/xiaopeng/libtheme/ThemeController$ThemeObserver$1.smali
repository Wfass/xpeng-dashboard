.class Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver$1;
.super Landroid/database/ContentObserver;
.source "ThemeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;-><init>(Lcom/xiaopeng/libtheme/ThemeController;Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;

.field final synthetic val$this$0:Lcom/xiaopeng/libtheme/ThemeController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;Landroid/os/Handler;Lcom/xiaopeng/libtheme/ThemeController;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver$1;->this$1:Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;

    iput-object p3, p0, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver$1;->val$this$0:Lcom/xiaopeng/libtheme/ThemeController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 187
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 188
    if-eqz p1, :cond_0

    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver$1;->this$1:Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;

    iget-object v0, v0, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;->this$0:Lcom/xiaopeng/libtheme/ThemeController;

    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeController;->access$200(Lcom/xiaopeng/libtheme/ThemeController;)V

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver$1;->this$1:Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;

    iget-object v0, v0, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;->this$0:Lcom/xiaopeng/libtheme/ThemeController;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeController;->access$300(Lcom/xiaopeng/libtheme/ThemeController;ZLandroid/net/Uri;)V

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver$1;->this$1:Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;

    iget-object v0, v0, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;->this$0:Lcom/xiaopeng/libtheme/ThemeController;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeController;->access$400(Lcom/xiaopeng/libtheme/ThemeController;ZLandroid/net/Uri;)V

    .line 192
    return-void
.end method
