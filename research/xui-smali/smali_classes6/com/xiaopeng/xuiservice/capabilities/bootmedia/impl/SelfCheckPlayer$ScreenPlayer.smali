.class Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;
.super Ljava/lang/Object;
.source "SelfCheckPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenPlayer"
.end annotation


# instance fields
.field mediaPlayer:Landroid/media/MediaPlayer;

.field rootView:Landroid/view/View;

.field final screenId:I

.field surfaceView:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "screenId"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->screenId:I

    .line 50
    return-void
.end method
