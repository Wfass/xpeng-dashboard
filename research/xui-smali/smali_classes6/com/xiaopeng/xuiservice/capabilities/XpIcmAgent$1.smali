.class Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent$1;
.super Landroid/database/ContentObserver;
.source "XpIcmAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 81
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;)V

    .line 85
    return-void
.end method
