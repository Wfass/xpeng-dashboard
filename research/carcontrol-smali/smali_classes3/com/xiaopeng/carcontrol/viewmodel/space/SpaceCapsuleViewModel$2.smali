.class Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$2;
.super Ljava/lang/Object;
.source "SpaceCapsuleViewModel.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "service"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected - name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpaceCapsuleViewModel"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isMeditationIndependent"

    .line 140
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.xiaopeng.homespace.capsule"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    check-cast p2, Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicServiceBinder;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicServiceBinder;->getService()Lcom/xiaopeng/carcontrol/CapsuleMusicService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$202(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;Lcom/xiaopeng/carcontrol/CapsuleMusicService;)Lcom/xiaopeng/carcontrol/CapsuleMusicService;

    const-string p1, "Connect music player service."

    .line 145
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$200(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Lcom/xiaopeng/carcontrol/CapsuleMusicService;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$300(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;)Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/CapsuleMusicService;->setMusicListener(Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const-string p1, "SpaceCapsuleViewModel"

    const-string v0, "Disconnect music player service."

    .line 151
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
