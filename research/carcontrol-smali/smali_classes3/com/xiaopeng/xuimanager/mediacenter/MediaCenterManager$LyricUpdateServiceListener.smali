.class Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricUpdateServiceListener;
.super Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener$Stub;
.source "MediaCenterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LyricUpdateServiceListener"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V
    .locals 1

    .line 1833
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener$Stub;-><init>()V

    .line 1834
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricUpdateServiceListener;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onLyricUpdated(Ljava/lang/String;)V
    .locals 1

    .line 1839
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricUpdateServiceListener;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    .line 1841
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$2100(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
