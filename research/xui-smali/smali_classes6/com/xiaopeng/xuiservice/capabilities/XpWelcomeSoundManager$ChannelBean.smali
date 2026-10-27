.class Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;
.super Ljava/lang/Object;
.source "XpWelcomeSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelBean"
.end annotation


# instance fields
.field private fadeAudios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fadeTime:J

.field private isFade:Z

.field private playAudios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private playTime:J

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFadeAudios()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 658
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->fadeAudios:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFadeTime()J
    .locals 2

    .line 666
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->fadeTime:J

    return-wide v0
.end method

.method public getPlayAudios()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 634
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->playAudios:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPlayTime()J
    .locals 2

    .line 642
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->playTime:J

    return-wide v0
.end method

.method public isFade()Z
    .locals 1

    .line 650
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->isFade:Z

    return v0
.end method

.method public setFade(Z)V
    .locals 0
    .param p1, "fade"    # Z

    .line 654
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->isFade:Z

    .line 655
    return-void
.end method

.method public setFadeAudios(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 662
    .local p1, "fadeAudios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->fadeAudios:Ljava/util/ArrayList;

    .line 663
    return-void
.end method

.method public setFadeTime(J)V
    .locals 0
    .param p1, "fadeTime"    # J

    .line 670
    iput-wide p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->fadeTime:J

    .line 671
    return-void
.end method

.method public setPlayAudios(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 638
    .local p1, "playAudios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->playAudios:Ljava/util/ArrayList;

    .line 639
    return-void
.end method

.method public setPlayTime(J)V
    .locals 0
    .param p1, "playTime"    # J

    .line 646
    iput-wide p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->playTime:J

    .line 647
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChannelBean{playAudios="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->playAudios:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", playTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->playTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isFade="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->isFade:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fadeAudios="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->fadeAudios:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fadeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$ChannelBean;->fadeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
