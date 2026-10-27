.class Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;
.super Ljava/lang/Object;
.source "XpWelcomeSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelControl"
.end annotation


# instance fields
.field private audioConfig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;",
            ">;"
        }
    .end annotation
.end field

.field private isLoop:Z

.field private needStop:Z

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;->needStop:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$1;

    .line 685
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;)V

    return-void
.end method


# virtual methods
.method public getAudioConfig()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;",
            ">;"
        }
    .end annotation

    .line 714
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;->audioConfig:Ljava/util/List;

    return-object v0
.end method

.method public isLoop()Z
    .locals 1

    .line 694
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;->isLoop:Z

    return v0
.end method

.method public needStop()Z
    .locals 1

    .line 702
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;->needStop:Z

    return v0
.end method

.method public setAudioConfig(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;",
            ">;)V"
        }
    .end annotation

    .line 718
    .local p1, "audioConfig":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;>;"
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;->audioConfig:Ljava/util/List;

    .line 719
    return-void
.end method

.method public setLoop(Z)V
    .locals 0
    .param p1, "loop"    # Z

    .line 698
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;->isLoop:Z

    .line 699
    return-void
.end method

.method public start()V
    .locals 1

    .line 710
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;->needStop:Z

    .line 711
    return-void
.end method

.method public stop()V
    .locals 1

    .line 706
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelControl;->needStop:Z

    .line 707
    return-void
.end method
