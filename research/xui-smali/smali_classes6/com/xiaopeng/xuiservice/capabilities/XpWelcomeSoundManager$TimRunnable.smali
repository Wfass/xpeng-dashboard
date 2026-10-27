.class public final Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;
.super Ljava/lang/Object;
.source "XpWelcomeSoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TimRunnable"
.end annotation


# instance fields
.field private channelBean:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    .line 501
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;)Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;

    .line 501
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;->channelBean:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 511
    const-string v0, "XpWelcomeSoundManager"

    const-string v1, "-------end-------"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable$1;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 518
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->access$500(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;)V

    .line 519
    return-void
.end method

.method public setChannelBean(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;)V
    .locals 0
    .param p1, "bean"    # Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;

    .line 505
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;->channelBean:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;

    .line 506
    return-void
.end method
