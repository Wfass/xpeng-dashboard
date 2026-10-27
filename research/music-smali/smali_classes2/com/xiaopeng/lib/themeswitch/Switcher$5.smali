.class Lcom/xiaopeng/lib/themeswitch/Switcher$5;
.super Ljava/lang/Object;
.source "Switcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/themeswitch/Switcher;->switchViewAttr(ZLandroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

.field final synthetic val$isCalledInRegisterEntry:Z

.field final synthetic val$pageNameXml:Ljava/lang/String;

.field final synthetic val$rootView:Landroid/view/View;

.field final synthetic val$targetPageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Ljava/lang/String;ZLandroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    iput-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->val$pageNameXml:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->val$isCalledInRegisterEntry:Z

    iput-object p4, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->val$rootView:Landroid/view/View;

    iput-object p5, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->val$targetPageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-static {v0}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$1100(Lcom/xiaopeng/lib/themeswitch/Switcher;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->val$pageNameXml:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$800(Lcom/xiaopeng/lib/themeswitch/Switcher;Landroid/content/Context;Ljava/lang/String;)Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    new-instance v1, Lcom/xiaopeng/lib/themeswitch/Switcher$5$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/lib/themeswitch/Switcher$5$1;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher$5;Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;)V

    invoke-static {v1}, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->postMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->val$targetPageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$1300(Lcom/xiaopeng/lib/themeswitch/Switcher;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    iget-boolean v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->val$isCalledInRegisterEntry:Z

    iget-object v2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->val$targetPageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$1200(Lcom/xiaopeng/lib/themeswitch/Switcher;ZLjava/lang/String;)V

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parse ThemeXml error!(targetPageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->val$targetPageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pageNameXml="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$5;->val$pageNameXml:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeSwitcher"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
