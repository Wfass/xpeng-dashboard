.class Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper$1;
.super Ljava/lang/Object;
.source "MediaBiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;->vendorStartAudioSession(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$usage:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;

    iput p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper$1;->val$usage:I

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper$1;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 42
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper$1;->val$usage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 44
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper$1;->val$pkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .end local v0    # "startTime":J
    :cond_0
    return-void
.end method
