.class Lcom/xiaopeng/commonfunc/model/test/SoundModel$1;
.super Ljava/lang/Object;
.source "SoundModel.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/commonfunc/model/test/SoundModel;->testTrack(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/test/SoundModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/model/test/SoundModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/model/test/SoundModel;

    .line 130
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/SoundModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/test/SoundModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 133
    const-string v0, "SoundModel"

    const-string v1, " mMediaPlayer onPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 135
    return-void
.end method
