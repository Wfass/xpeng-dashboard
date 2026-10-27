.class public final synthetic Lcom/xiaopeng/carcontrol/helper/-$$Lambda$SoundHelper$CpLn60J8pwb8dU9GE6gu97m6gUA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$SoundHelper$CpLn60J8pwb8dU9GE6gu97m6gUA;->f$0:Z

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$SoundHelper$CpLn60J8pwb8dU9GE6gu97m6gUA;->f$0:Z

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->lambda$realPlay$4(ZLandroid/media/MediaPlayer;)V

    return-void
.end method
