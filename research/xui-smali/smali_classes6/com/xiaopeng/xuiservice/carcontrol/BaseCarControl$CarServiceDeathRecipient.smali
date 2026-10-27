.class Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$CarServiceDeathRecipient;
.super Ljava/lang/Object;
.source "BaseCarControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CarServiceDeathRecipient"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "xpAudio.Binder"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 175
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$CarServiceDeathRecipient;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$CarServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    .line 177
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 185
    const-string/jumbo v0, "xpAudio.Binder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$CarServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$CarServiceDeathRecipient;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mCarApiClient:Landroid/car/Car;

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$CarServiceDeathRecipient;->this$0:Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->access$000(Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;)V

    .line 188
    return-void
.end method

.method release()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$CarServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 192
    return-void
.end method
