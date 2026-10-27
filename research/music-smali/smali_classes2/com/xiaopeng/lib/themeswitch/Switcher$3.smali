.class Lcom/xiaopeng/lib/themeswitch/Switcher$3;
.super Ljava/lang/Object;
.source "Switcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/themeswitch/Switcher;->parseThemeConfigure(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/lib/themeswitch/Switcher$OnThemeConfigureParseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/xiaopeng/lib/themeswitch/Switcher$OnThemeConfigureParseListener;

.field final synthetic val$targetName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/lib/themeswitch/Switcher$OnThemeConfigureParseListener;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$3;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    iput-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$3;->val$targetName:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$3;->val$listener:Lcom/xiaopeng/lib/themeswitch/Switcher$OnThemeConfigureParseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$3;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$3;->val$targetName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$800(Lcom/xiaopeng/lib/themeswitch/Switcher;Landroid/content/Context;Ljava/lang/String;)Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$3;->val$listener:Lcom/xiaopeng/lib/themeswitch/Switcher$OnThemeConfigureParseListener;

    if-eqz v1, :cond_0

    .line 326
    new-instance v1, Lcom/xiaopeng/lib/themeswitch/Switcher$3$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/lib/themeswitch/Switcher$3$1;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher$3;Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;)V

    invoke-static {v1}, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->postMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
