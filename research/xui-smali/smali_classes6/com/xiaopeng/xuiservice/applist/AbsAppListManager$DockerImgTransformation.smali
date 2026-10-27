.class Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$DockerImgTransformation;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "AbsAppListManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DockerImgTransformation"
.end annotation


# static fields
.field private static final ID:Ljava/lang/String; = "com.xiaopeng.xuiservice.applist.AbsAppListManager.DockerImgTransformation"


# instance fields
.field private mAppListManager:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

.field private mBgColorUseBody:Z


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;)V
    .locals 1
    .param p1, "appListManager"    # Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    .line 1055
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    .line 1052
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$DockerImgTransformation;->mAppListManager:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    .line 1053
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$DockerImgTransformation;->mBgColorUseBody:Z

    .line 1056
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$DockerImgTransformation;->mAppListManager:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    .line 1057
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;Z)V
    .locals 1
    .param p1, "appListManager"    # Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    .param p2, "bgColorUseBody"    # Z

    .line 1059
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    .line 1052
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$DockerImgTransformation;->mAppListManager:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    .line 1053
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$DockerImgTransformation;->mBgColorUseBody:Z

    .line 1060
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$DockerImgTransformation;->mAppListManager:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    .line 1061
    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$DockerImgTransformation;->mBgColorUseBody:Z

    .line 1062
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 1066
    instance-of v0, p1, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$DockerImgTransformation;

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1071
    const-string v0, "com.xiaopeng.xuiservice.applist.AbsAppListManager.DockerImgTransformation"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I

    .line 1076
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$DockerImgTransformation;->mAppListManager:Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    sget v2, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->BITMAP_DOCKER_SIZE:I

    iget-boolean v5, p0, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$DockerImgTransformation;->mBgColorUseBody:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->checkBitMap(Ljava/lang/Object;IZZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1083
    :try_start_0
    const-string v0, "com.xiaopeng.xuiservice.applist.AbsAppListManager.DockerImgTransformation"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    goto :goto_0

    .line 1084
    :catch_0
    move-exception v0

    .line 1085
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1087
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
