.class Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader;->loadGameImage(Ljava/lang/String;Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$defaultId:I

.field final synthetic val$imageUri:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/widget/ImageView;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2;->val$imageUri:Ljava/lang/String;

    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2;->val$defaultId:I

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2;->val$view:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 51
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2;->val$imageUri:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2;->val$defaultId:I

    .line 53
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2$1;

    .line 54
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader;->access$000()I

    move-result v2

    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader;->access$100()I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2;II)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 73
    return-void
.end method
