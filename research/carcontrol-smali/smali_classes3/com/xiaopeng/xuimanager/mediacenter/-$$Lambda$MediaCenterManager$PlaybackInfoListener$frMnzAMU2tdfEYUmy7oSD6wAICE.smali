.class public final synthetic Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$frMnzAMU2tdfEYUmy7oSD6wAICE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$frMnzAMU2tdfEYUmy7oSD6wAICE;->f$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iput p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$frMnzAMU2tdfEYUmy7oSD6wAICE;->f$1:I

    iput-wide p3, p0, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$frMnzAMU2tdfEYUmy7oSD6wAICE;->f$2:J

    iput-wide p5, p0, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$frMnzAMU2tdfEYUmy7oSD6wAICE;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$frMnzAMU2tdfEYUmy7oSD6wAICE;->f$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iget v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$frMnzAMU2tdfEYUmy7oSD6wAICE;->f$1:I

    iget-wide v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$frMnzAMU2tdfEYUmy7oSD6wAICE;->f$2:J

    iget-wide v4, p0, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$frMnzAMU2tdfEYUmy7oSD6wAICE;->f$3:J

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackInfoListener;->lambda$OnUpdatePosition$3(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;IJJ)V

    return-void
.end method
