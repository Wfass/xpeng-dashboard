.class Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1$1;
.super Ljava/lang/Object;
.source "ThemeWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1$1;->this$1:Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1$1;->this$1:Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;

    iget-object v0, v0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;->this$0:Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;

    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1$1;->this$1:Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;

    iget-object v1, v1, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;->this$0:Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;

    iget-object v2, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1$1;->this$1:Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;

    iget-object v2, v2, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->access$100(Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->access$200(Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;I)V

    return-void
.end method
