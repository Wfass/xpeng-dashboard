.class Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$1;
.super Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener$Stub;
.source "XpWelcomeSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceEvent(II)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    const-string v0, "XpWelcomeSoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResourceEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method
