.class Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$1;
.super Landroid/database/ContentObserver;
.source "XpSpeechTtsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->registerObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 95
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    .line 97
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$300(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "XpMainDriverMode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$202(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;Z)Z

    .line 99
    const-string v0, "XpSpeechTtsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange, hasDrivingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$200(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method
