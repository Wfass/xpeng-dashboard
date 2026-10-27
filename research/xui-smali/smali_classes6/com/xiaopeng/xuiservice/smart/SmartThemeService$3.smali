.class Lcom/xiaopeng/xuiservice/smart/SmartThemeService$3;
.super Landroid/database/ContentObserver;
.source "SmartThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->registerProvider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartThemeService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartThemeService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartThemeService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartThemeService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 105
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartThemeService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartThemeService;)V

    .line 107
    return-void
.end method
