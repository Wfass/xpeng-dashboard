.class public Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;
.super Ljava/lang/Object;
.source "AnimationPlayer.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;


# static fields
.field private static final METHOD:Ljava/lang/String; = "bootanimation"

.field private static final TAG:Ljava/lang/String; = "AnimationPlayer"


# instance fields
.field private execProcess:Ljava/lang/Process;

.field private final mNativeCallListener:Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;

.field private processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;)V
    .locals 1
    .param p1, "processor"    # Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$AnimationPlayer$_EE25KVMbZMcCJuaWZryNL-lXGA;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$AnimationPlayer$_EE25KVMbZMcCJuaWZryNL-lXGA;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->mNativeCallListener:Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    .line 22
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;

    .line 25
    const-string v0, "exit"

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const-string v0, "AnimationPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNativeCall, processor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->getInstance()Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;

    move-result-object v0

    const-string v1, "bootanimation"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->mNativeCallListener:Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->unregisterNativeCallListener(Ljava/lang/String;Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;)V

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;->afterProcess()V

    .line 33
    :cond_0
    return-void
.end method

.method public static synthetic lambda$play$1(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;)V
    .locals 6

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->execProcess:Ljava/lang/Process;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->execProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 40
    :cond_0
    const-string v0, "persist.sys.theme.style"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "theme":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bootanimation -n welcomeanimation-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -l 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "cmd":Ljava/lang/String;
    :try_start_0
    const-string v2, "service.bootanim.exit"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->getInstance()Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;

    move-result-object v2

    const-string v3, "bootanimation"

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->mNativeCallListener:Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->registerNativeCallListener(Ljava/lang/String;Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;)V

    .line 46
    const-string v2, "AnimationPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->execProcess:Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 48
    :catch_0
    move-exception v2

    .line 49
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "AnimationPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "play animation failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->getInstance()Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;

    move-result-object v3

    const-string v4, "bootanimation"

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->mNativeCallListener:Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->unregisterNativeCallListener(Ljava/lang/String;Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;)V

    .line 51
    const-string v3, "service.bootanim.exit"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    if-eqz v3, :cond_1

    .line 53
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    invoke-interface {v3}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;->afterProcess()V

    .line 56
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$release$3(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->execProcess:Ljava/lang/Process;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->execProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "AnimationPlayer"

    const-string v1, "release animation"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->getInstance()Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;

    move-result-object v0

    const-string v1, "bootanimation"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->mNativeCallListener:Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->unregisterNativeCallListener(Ljava/lang/String;Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->execProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 81
    :cond_0
    return-void
.end method

.method public static synthetic lambda$stop$2(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->execProcess:Ljava/lang/Process;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->execProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "AnimationPlayer"

    const-string v1, "stop animation"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->getInstance()Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;

    move-result-object v0

    const-string v1, "bootanimation"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->mNativeCallListener:Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->unregisterNativeCallListener(Ljava/lang/String;Lcom/xiaopeng/xuiservice/utils/NativeCallHelper$NativeCallListener;)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->execProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;->afterProcess()V

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public play()V
    .locals 2

    .line 37
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$AnimationPlayer$Tl7PlnP0-Whwn1yB5Cy2SXsnNBk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$AnimationPlayer$Tl7PlnP0-Whwn1yB5Cy2SXsnNBk;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 57
    return-void
.end method

.method public release()V
    .locals 2

    .line 75
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$AnimationPlayer$m1ZzM0JVNKBl603s-2z1KFb9s0c;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$AnimationPlayer$m1ZzM0JVNKBl603s-2z1KFb9s0c;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method

.method public stop()V
    .locals 2

    .line 61
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$AnimationPlayer$lFKRIpm14cm1zLvMGLs76XBsfUI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$AnimationPlayer$lFKRIpm14cm1zLvMGLs76XBsfUI;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method
