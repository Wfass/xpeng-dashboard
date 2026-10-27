.class Lcom/xiaopeng/lib/themeswitch/Switcher$5$1;
.super Ljava/lang/Object;
.source "Switcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/themeswitch/Switcher$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$5;

.field final synthetic val$targetPageTheme:Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/themeswitch/Switcher$5;Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5$1;->this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$5;

    iput-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5$1;->val$targetPageTheme:Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "ThemeSwitcher"

    const-string v1, "Get PageTheme from xml."

    .line 394
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5$1;->this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$5;

    iget-object v0, v0, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-static {v0}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$900(Lcom/xiaopeng/lib/themeswitch/Switcher;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5$1;->this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$5;

    iget-object v1, v1, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->val$pageNameXml:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5$1;->val$targetPageTheme:Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5$1;->this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$5;

    iget-object v0, v0, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5$1;->this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$5;

    iget-boolean v1, v1, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->val$isCalledInRegisterEntry:Z

    iget-object v2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5$1;->this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$5;

    iget-object v2, v2, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->val$rootView:Landroid/view/View;

    iget-object v3, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5$1;->this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$5;

    iget-object v3, v3, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->val$targetPageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5$1;->val$targetPageTheme:Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$1000(Lcom/xiaopeng/lib/themeswitch/Switcher;ZLandroid/view/View;Ljava/lang/String;Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;)V

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5$1;->this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$5;

    iget-object v0, v0, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5$1;->this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$5;

    iget-boolean v1, v1, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->val$isCalledInRegisterEntry:Z

    iget-object v2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5$1;->this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$5;

    iget-object v2, v2, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->val$targetPageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$1200(Lcom/xiaopeng/lib/themeswitch/Switcher;ZLjava/lang/String;)V

    return-void
.end method
