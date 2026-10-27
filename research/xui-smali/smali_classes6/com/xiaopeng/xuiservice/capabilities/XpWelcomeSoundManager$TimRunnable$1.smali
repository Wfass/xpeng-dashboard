.class Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable$1;
.super Ljava/lang/Object;
.source "XpWelcomeSoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;

    .line 512
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable$1;->this$1:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable$1;->this$1:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable$1;->this$1:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;->access$300(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$TimRunnable;)Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->access$400(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;)V

    .line 516
    return-void
.end method
