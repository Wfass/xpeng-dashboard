.class Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricInfoListenerToService;
.super Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener$Stub;
.source "MediaCenterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricInfoListenerToService"
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

.field final synthetic this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V
    .locals 0

    .line 2395
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricInfoListenerToService;->this$0:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener$Stub;-><init>()V

    .line 2396
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricInfoListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onLyricInfoUpdated(ILcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2401
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricInfoListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    .line 2403
    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$2800(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;ILcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    :cond_0
    return-void
.end method
