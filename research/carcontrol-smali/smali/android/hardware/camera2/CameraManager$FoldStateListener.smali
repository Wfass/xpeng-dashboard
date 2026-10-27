.class final Landroid/hardware/camera2/CameraManager$FoldStateListener;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FoldStateListener"
.end annotation


# instance fields
.field private final mFoldedDeviceStates:[I

.field final synthetic this$0:Landroid/hardware/camera2/CameraManager;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraManager;Landroid/content/Context;)V
    .locals 0

    .line 170
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1070053

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mFoldedDeviceStates:[I

    return-void
.end method

.method private handleStateChange(I)V
    .locals 5

    .line 176
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->mFoldedDeviceStates:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    .line 177
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->access$000(Landroid/hardware/camera2/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 178
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v1, p1}, Landroid/hardware/camera2/CameraManager;->access$102(Landroid/hardware/camera2/CameraManager;Z)Z

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v2}, Landroid/hardware/camera2/CameraManager;->access$200(Landroid/hardware/camera2/CameraManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 181
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager$DeviceStateListener;

    if-eqz v4, :cond_0

    .line 183
    invoke-interface {v4, p1}, Landroid/hardware/camera2/CameraManager$DeviceStateListener;->onDeviceStateChanged(Z)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 189
    iget-object p1, p0, Landroid/hardware/camera2/CameraManager$FoldStateListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {p1}, Landroid/hardware/camera2/CameraManager;->access$200(Landroid/hardware/camera2/CameraManager;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 191
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final onBaseStateChanged(I)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$FoldStateListener;->handleStateChange(I)V

    return-void
.end method

.method public final onStateChanged(I)V
    .locals 0

    .line 201
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$FoldStateListener;->handleStateChange(I)V

    return-void
.end method
