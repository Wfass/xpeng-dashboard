.class public final synthetic Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$PDJSRde0lf2SeymByKUXaKDgoss;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$PDJSRde0lf2SeymByKUXaKDgoss;->f$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iput p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$PDJSRde0lf2SeymByKUXaKDgoss;->f$1:I

    iput p3, p0, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$PDJSRde0lf2SeymByKUXaKDgoss;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$PDJSRde0lf2SeymByKUXaKDgoss;->f$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iget v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$PDJSRde0lf2SeymByKUXaKDgoss;->f$1:I

    iget v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$PDJSRde0lf2SeymByKUXaKDgoss;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackInfoListener;->lambda$OnPlaybackChanged$1(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;II)V

    return-void
.end method
