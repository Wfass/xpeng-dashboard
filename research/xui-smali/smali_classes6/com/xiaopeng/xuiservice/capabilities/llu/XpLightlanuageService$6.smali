.class Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$6;
.super Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;
.source "XpLightlanuageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    .line 1513
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$6;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/theme/handler/ThemeResourceHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInit()V
    .locals 2

    .line 1516
    invoke-static {}, Lcom/xiaopeng/xuiservice/theme/Themes;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v0

    .line 1517
    .local v0, "theme":Lcom/xiaopeng/xuimanager/theme/Theme;
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/Themes;->isOperationTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1518
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$6;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$2200(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 1520
    :cond_0
    return-void
.end method

.method protected doOnThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 1525
    return-void
.end method

.method protected doOnThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 0
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 1530
    return-void
.end method

.method protected doOnThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 1542
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$6;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$2300(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;)V

    .line 1543
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/theme/Themes;->isOperationTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1544
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$6;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$2200(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 1546
    :cond_0
    return-void
.end method

.method protected doOnThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 1
    .param p1, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 1534
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/theme/Themes;->isOperationTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/theme/Themes;->isSelectedTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1535
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$6;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$2300(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;)V

    .line 1536
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$6;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$2200(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 1538
    :cond_0
    return-void
.end method
