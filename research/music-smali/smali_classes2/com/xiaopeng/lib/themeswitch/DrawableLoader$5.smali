.class final Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5;
.super Ljava/lang/Object;
.source "DrawableLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/themeswitch/DrawableLoader;->loadDrawableAsync(Landroid/content/Context;[ILcom/xiaopeng/lib/themeswitch/DrawableLoader$MultiDrawableLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/xiaopeng/lib/themeswitch/DrawableLoader$MultiDrawableLoadCallback;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$ids:[I


# direct methods
.method constructor <init>([ILandroid/content/Context;Lcom/xiaopeng/lib/themeswitch/DrawableLoader$MultiDrawableLoadCallback;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5;->val$ids:[I

    iput-object p2, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5;->val$callback:Lcom/xiaopeng/lib/themeswitch/DrawableLoader$MultiDrawableLoadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v0, 0xa

    .line 122
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5;->val$ids:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    move v2, v1

    .line 127
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5;->val$ids:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 129
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5;->val$ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5;->val$ids:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 130
    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 132
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 v4, 0x3

    .line 133
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5;->val$ids:[I

    aget v5, v5, v2

    .line 134
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5;->val$ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "loadDrawableAsync, Unable to load resource 0x%08x from pkg=%s, array index: %d"

    .line 133
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "DrawableLoader"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5;->val$callback:Lcom/xiaopeng/lib/themeswitch/DrawableLoader$MultiDrawableLoadCallback;

    if-eqz v1, :cond_1

    .line 139
    new-instance v1, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5$1;-><init>(Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5;[Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->postMainThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
