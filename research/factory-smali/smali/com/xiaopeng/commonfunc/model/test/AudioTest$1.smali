.class Lcom/xiaopeng/commonfunc/model/test/AudioTest$1;
.super Ljava/lang/Object;
.source "AudioTest.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/commonfunc/model/test/AudioTest;->testTrack(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/test/AudioTest;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/model/test/AudioTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/model/test/AudioTest;

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/AudioTest$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/AudioTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 104
    const-string v0, "AudioTest"

    const-string v1, " mMediaPlayer onPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 106
    return-void
.end method
