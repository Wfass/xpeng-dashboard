.class final Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4;
.super Ljava/lang/Object;
.source "DrawableLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/themeswitch/DrawableLoader;->loadDrawableAsync(Landroid/content/Context;ILcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4;->val$ctx:Landroid/content/Context;

    iput p2, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4;->val$resId:I

    iput-object p3, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4;->val$callback:Lcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0xa

    .line 88
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4;->val$ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4;->val$resId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 v1, 0x2

    .line 95
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4;->val$resId:I

    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4;->val$ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "loadDrawableAsync, Unable to load resource 0x%08x from pkg=%s"

    .line 95
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DrawableLoader"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4;->val$callback:Lcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;

    if-eqz v1, :cond_0

    .line 101
    new-instance v1, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4$1;-><init>(Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->postMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
