.class public final synthetic Landroid/media/-$$Lambda$AudioManager$ModeDispatcherStub$COCK_e4I_6VR2kgadpZFe4pxB1M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioManager$ModeListenerInfo;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioManager$ModeListenerInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$AudioManager$ModeDispatcherStub$COCK_e4I_6VR2kgadpZFe4pxB1M;->f$0:Landroid/media/AudioManager$ModeListenerInfo;

    iput p2, p0, Landroid/media/-$$Lambda$AudioManager$ModeDispatcherStub$COCK_e4I_6VR2kgadpZFe4pxB1M;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/media/-$$Lambda$AudioManager$ModeDispatcherStub$COCK_e4I_6VR2kgadpZFe4pxB1M;->f$0:Landroid/media/AudioManager$ModeListenerInfo;

    iget v1, p0, Landroid/media/-$$Lambda$AudioManager$ModeDispatcherStub$COCK_e4I_6VR2kgadpZFe4pxB1M;->f$1:I

    invoke-static {v0, v1}, Landroid/media/AudioManager$ModeDispatcherStub;->lambda$dispatchAudioModeChanged$0(Landroid/media/AudioManager$ModeListenerInfo;I)V

    return-void
.end method
