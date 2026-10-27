.class final Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimeHandler;
.super Landroid/os/Handler;
.source "XpWelcomeSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimeHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 494
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$1;

    .line 494
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public postAtTime(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;JLcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;)V
    .locals 0
    .param p1, "r"    # Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;
    .param p2, "uptimeMillis"    # J
    .param p4, "bean"    # Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;

    .line 496
    invoke-virtual {p1, p4}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;->setChannelBean(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;)V

    .line 497
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimeHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 498
    return-void
.end method
