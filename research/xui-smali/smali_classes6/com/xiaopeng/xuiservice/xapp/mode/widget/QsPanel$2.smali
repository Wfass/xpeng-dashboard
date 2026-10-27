.class Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$2;
.super Landroid/database/ContentObserver;
.source "QsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 344
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 348
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 349
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->access$100(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->getCurrentBrightnessState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setProgress(I)V

    goto :goto_0

    .line 351
    :cond_0
    const-string v0, "avas_speaker"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->access$200(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)V

    .line 354
    :cond_1
    :goto_0
    return-void
.end method
