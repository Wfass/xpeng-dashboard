.class Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "AbsAppListManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapImgTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mAppInfo:Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

.field mCallback:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$AppIconFetchedCallback;

.field mRetryCount:J

.field mRetryRunnable:Ljava/lang/Runnable;

.field mTransformation:Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

.field mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Ljava/lang/String;Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$AppIconFetchedCallback;)V
    .locals 2
    .param p2, "appInfo"    # Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "transformation"    # Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
    .param p5, "callback"    # Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$AppIconFetchedCallback;

    .line 1011
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->this$0:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    .line 1008
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->mRetryCount:J

    .line 1009
    new-instance p1, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$BitmapImgTarget$vpJnZVs4kW8RgiQ2FdRueXxaTDA;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$BitmapImgTarget$vpJnZVs4kW8RgiQ2FdRueXxaTDA;-><init>(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;)V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->mRetryRunnable:Ljava/lang/Runnable;

    .line 1012
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->mAppInfo:Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 1013
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->mUrl:Ljava/lang/String;

    .line 1014
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->mTransformation:Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    .line 1015
    iput-object p5, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->mCallback:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$AppIconFetchedCallback;

    .line 1016
    return-void
.end method

.method public static synthetic lambda$onResourceReady$0(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1040
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->mCallback:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$AppIconFetchedCallback;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->mAppInfo:Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$AppIconFetchedCallback;->onAppIconReady(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Landroid/graphics/Bitmap;)V

    .line 1041
    return-void
.end method

.method public static synthetic lambda$vpJnZVs4kW8RgiQ2FdRueXxaTDA(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->retry()V

    return-void
.end method

.method private retry()V
    .locals 3

    .line 1019
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->this$0:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->mTransformation:Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    invoke-static {v0, v1, v2, p0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->access$000(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;Ljava/lang/String;Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;)V

    .line 1020
    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1047
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->this$0:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->access$100(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BitmapImgTarget, onLoadCleared, drawable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "errorDrawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1024
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->mRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1025
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->mRetryCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->mRetryCount:J

    .line 1026
    const-wide/32 v0, 0xea60

    .line 1027
    .local v0, "delay":J
    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->mRetryCount:J

    const-wide/16 v4, 0x5

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1029
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->this$0:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->access$100(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BitmapImgTarget, onLoadFailed, tried 5 times,url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    return-void

    .line 1032
    :cond_0
    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->mRetryCount:J

    mul-long/2addr v0, v2

    .line 1033
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->mRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1034
    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1038
    .local p2, "transition":Lcom/bumptech/glide/request/transition/Transition;, "Lcom/bumptech/glide/request/transition/Transition<-Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->this$0:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->access$100(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BitmapImgTarget,onResourceReady "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$BitmapImgTarget$tNdZdvIs2U6jkrbdi0YEZalWFg8;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$AbsAppListManager$BitmapImgTarget$tNdZdvIs2U6jkrbdi0YEZalWFg8;-><init>(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 1042
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1003
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$BitmapImgTarget;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
