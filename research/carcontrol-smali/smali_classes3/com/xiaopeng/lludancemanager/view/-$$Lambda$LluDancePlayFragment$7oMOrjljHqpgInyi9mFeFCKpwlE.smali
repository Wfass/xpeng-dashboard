.class public final synthetic Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDancePlayFragment$7oMOrjljHqpgInyi9mFeFCKpwlE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDancePlayFragment$7oMOrjljHqpgInyi9mFeFCKpwlE;->f$0:Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/-$$Lambda$LluDancePlayFragment$7oMOrjljHqpgInyi9mFeFCKpwlE;->f$0:Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->lambda$prepareVideo$3$LluDancePlayFragment(Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
