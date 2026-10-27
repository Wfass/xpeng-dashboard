.class Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper$2;
.super Ljava/lang/Object;
.source "MediaBiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;->vendorStopAudioSession(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper$2;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 55
    .local v6, "endTime":J
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper$2;->val$pkgName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper$2;->val$pkgName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 57
    .local v8, "startTime":J
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper$2;->val$pkgName:Ljava/lang/String;

    move-wide v2, v8

    move-wide v4, v6

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaBiHelper;Ljava/lang/String;JJ)V

    .line 59
    .end local v8    # "startTime":J
    :cond_0
    return-void
.end method
