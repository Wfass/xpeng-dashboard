.class final Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$SystemModeSettingsObserver;
.super Landroid/database/ContentObserver;
.source "ModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SystemModeSettingsObserver"
.end annotation


# instance fields
.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$SystemModeSettingsObserver;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;

    .line 83
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 80
    const-string v0, "setting_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$SystemModeSettingsObserver;->mUri:Landroid/net/Uri;

    .line 84
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;)I

    .line 85
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$SystemModeSettingsObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$SystemModeSettingsObserver;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;)V

    .line 97
    :cond_0
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$SystemModeSettingsObserver;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 90
    return-void
.end method
