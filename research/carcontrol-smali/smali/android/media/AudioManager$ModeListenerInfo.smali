.class Landroid/media/AudioManager$ModeListenerInfo;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModeListenerInfo"
.end annotation


# instance fields
.field final mExecutor:Ljava/util/concurrent/Executor;

.field final mListener:Landroid/media/AudioManager$OnModeChangedListener;


# direct methods
.method constructor <init>(Landroid/media/AudioManager$OnModeChangedListener;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 3071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3072
    iput-object p1, p0, Landroid/media/AudioManager$ModeListenerInfo;->mListener:Landroid/media/AudioManager$OnModeChangedListener;

    .line 3073
    iput-object p2, p0, Landroid/media/AudioManager$ModeListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method
