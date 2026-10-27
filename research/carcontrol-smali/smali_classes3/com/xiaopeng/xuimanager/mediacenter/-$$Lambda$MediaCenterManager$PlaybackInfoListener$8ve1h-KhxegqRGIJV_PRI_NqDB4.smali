.class public final synthetic Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$8ve1h-KhxegqRGIJV_PRI_NqDB4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$8ve1h-KhxegqRGIJV_PRI_NqDB4;->f$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iput p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$8ve1h-KhxegqRGIJV_PRI_NqDB4;->f$1:I

    iput-object p3, p0, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$8ve1h-KhxegqRGIJV_PRI_NqDB4;->f$2:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$8ve1h-KhxegqRGIJV_PRI_NqDB4;->f$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iget v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$8ve1h-KhxegqRGIJV_PRI_NqDB4;->f$1:I

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/-$$Lambda$MediaCenterManager$PlaybackInfoListener$8ve1h-KhxegqRGIJV_PRI_NqDB4;->f$2:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackInfoListener;->lambda$OnMediaInfoNotify$4(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    return-void
.end method
