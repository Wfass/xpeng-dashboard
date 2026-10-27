.class Lcom/android/car/intelligent/CarDrivingScene$MessageHandler;
.super Landroid/os/Handler;
.source "CarDrivingScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/intelligent/CarDrivingScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# static fields
.field public static final MSG_SCENE_CHANGED:I = 0x186a1

.field public static final TIME_MSG_SCENE_CHANGED_DELAY:I = 0xbb8


# instance fields
.field private final mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/car/intelligent/CarDrivingScene;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/car/intelligent/CarDrivingScene;Landroid/os/Looper;)V
    .locals 1
    .param p1, "service"    # Lcom/android/car/intelligent/CarDrivingScene;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 113
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    .line 115
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 119
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x186a1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/car/intelligent/CarDrivingScene$MessageHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/intelligent/CarDrivingScene;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/car/intelligent/CarSceneEvent;

    invoke-static {v0, v1}, Lcom/android/car/intelligent/CarDrivingScene;->access$200(Lcom/android/car/intelligent/CarDrivingScene;Landroid/car/intelligent/CarSceneEvent;)V

    .line 127
    :cond_1
    :goto_0
    return-void
.end method
