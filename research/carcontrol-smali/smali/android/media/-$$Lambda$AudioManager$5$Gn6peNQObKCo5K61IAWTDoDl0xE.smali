.class public final synthetic Landroid/media/-$$Lambda$AudioManager$5$Gn6peNQObKCo5K61IAWTDoDl0xE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioManager$AudioServerStateCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioManager$AudioServerStateCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$AudioManager$5$Gn6peNQObKCo5K61IAWTDoDl0xE;->f$0:Landroid/media/AudioManager$AudioServerStateCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/media/-$$Lambda$AudioManager$5$Gn6peNQObKCo5K61IAWTDoDl0xE;->f$0:Landroid/media/AudioManager$AudioServerStateCallback;

    invoke-static {v0}, Landroid/media/AudioManager$5;->lambda$dispatchAudioServerStateChange$0(Landroid/media/AudioManager$AudioServerStateCallback;)V

    return-void
.end method
