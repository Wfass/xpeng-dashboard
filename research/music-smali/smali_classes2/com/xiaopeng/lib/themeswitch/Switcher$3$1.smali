.class Lcom/xiaopeng/lib/themeswitch/Switcher$3$1;
.super Ljava/lang/Object;
.source "Switcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/themeswitch/Switcher$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$3;

.field final synthetic val$pageTheme:Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/themeswitch/Switcher$3;Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$3$1;->this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$3;

    iput-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$3$1;->val$pageTheme:Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$3$1;->this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$3;

    iget-object v0, v0, Lcom/xiaopeng/lib/themeswitch/Switcher$3;->val$listener:Lcom/xiaopeng/lib/themeswitch/Switcher$OnThemeConfigureParseListener;

    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$3$1;->val$pageTheme:Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/themeswitch/Switcher$OnThemeConfigureParseListener;->onThemeConfigureParse(Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;)V

    return-void
.end method
