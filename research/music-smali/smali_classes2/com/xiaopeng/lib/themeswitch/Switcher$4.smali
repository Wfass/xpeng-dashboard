.class Lcom/xiaopeng/lib/themeswitch/Switcher$4;
.super Ljava/lang/Object;
.source "Switcher.java"

# interfaces
.implements Lcom/xiaopeng/lib/themeswitch/Switcher$OnThemeConfigureParseListener;


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

    .line 371
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$4;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    iput-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$4;->val$pageNameXml:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$4;->val$isCalledInRegisterEntry:Z

    iput-object p4, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$4;->val$rootView:Landroid/view/View;

    iput-object p5, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$4;->val$targetPageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeConfigureParse(Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$4;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-static {v0}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$900(Lcom/xiaopeng/lib/themeswitch/Switcher;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$4;->val$pageNameXml:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$4;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    iget-boolean v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$4;->val$isCalledInRegisterEntry:Z

    iget-object v2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$4;->val$rootView:Landroid/view/View;

    iget-object v3, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$4;->val$targetPageName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$1000(Lcom/xiaopeng/lib/themeswitch/Switcher;ZLandroid/view/View;Ljava/lang/String;Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;)V

    return-void

    .line 378
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parse ThemeXml error!(targetPageName="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$4;->val$targetPageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pageNameXml="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$4;->val$pageNameXml:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ThemeSwitcher"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
