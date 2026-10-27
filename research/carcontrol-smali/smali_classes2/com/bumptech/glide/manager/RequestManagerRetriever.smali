.class public Lcom/bumptech/glide/manager/RequestManagerRetriever;
.super Ljava/lang/Object;
.source "RequestManagerRetriever.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

.field private static final FRAGMENT_INDEX_KEY:Ljava/lang/String; = "key"

.field static final FRAGMENT_TAG:Ljava/lang/String; = "com.bumptech.glide.manager"

.field private static final ID_REMOVE_FRAGMENT_MANAGER:I = 0x1

.field private static final ID_REMOVE_SUPPORT_FRAGMENT_MANAGER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RMRetriever"


# instance fields
.field private volatile applicationManager:Lcom/bumptech/glide/RequestManager;

.field private final factory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

.field private final handler:Landroid/os/Handler;

.field final pendingRequestManagerFragments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/FragmentManager;",
            "Lcom/bumptech/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field final pendingSupportRequestManagerFragments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/fragment/app/FragmentManager;",
            "Lcom/bumptech/glide/manager/SupportRequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final tempBundle:Landroid/os/Bundle;

.field private final tempViewToFragment:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final tempViewToSupportFragment:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 435
    new-instance v0, Lcom/bumptech/glide/manager/RequestManagerRetriever$1;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->DEFAULT_FACTORY:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingRequestManagerFragments:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    .line 74
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToSupportFragment:Landroidx/collection/ArrayMap;

    .line 75
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToFragment:Landroidx/collection/ArrayMap;

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempBundle:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    sget-object p1, Lcom/bumptech/glide/manager/RequestManagerRetriever;->DEFAULT_FACTORY:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->factory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    .line 80
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->handler:Landroid/os/Handler;

    return-void
.end method

.method private static assertNotDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 310
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load for a destroyed activity"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private findActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 299
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 300
    check-cast p1, Landroid/app/Activity;

    return-object p1

    .line 301
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 302
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private findAllFragmentsWithViews(Landroid/app/FragmentManager;Landroidx/collection/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 261
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 262
    invoke-virtual {p1}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 263
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findAllFragmentsWithViews(Landroid/app/FragmentManager;Landroidx/collection/ArrayMap;)V

    goto :goto_0

    .line 269
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findAllFragmentsWithViewsPreO(Landroid/app/FragmentManager;Landroidx/collection/ArrayMap;)V

    :cond_2
    return-void
.end method

.method private findAllFragmentsWithViewsPreO(Landroid/app/FragmentManager;Landroidx/collection/ArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 278
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempBundle:Landroid/os/Bundle;

    add-int/lit8 v2, v0, 0x1

    const-string v3, "key"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v3}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 289
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_1

    .line 291
    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findAllFragmentsWithViews(Landroid/app/FragmentManager;Landroidx/collection/ArrayMap;)V

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private static findAllSupportFragmentsWithViews(Ljava/util/Collection;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findAllSupportFragmentsWithViews(Ljava/util/Collection;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private findFragment(Landroid/view/View;Landroid/app/Activity;)Landroid/app/Fragment;
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToFragment:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 234
    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToFragment:Landroidx/collection/ArrayMap;

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findAllFragmentsWithViews(Landroid/app/FragmentManager;Landroidx/collection/ArrayMap;)V

    const v0, 0x1020002

    .line 238
    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    .line 240
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToFragment:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 245
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 251
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToFragment:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->clear()V

    return-object v0
.end method

.method private findSupportFragment(Landroid/view/View;Landroidx/fragment/app/FragmentActivity;)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToSupportFragment:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 211
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToSupportFragment:Landroidx/collection/ArrayMap;

    .line 210
    invoke-static {v0, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findAllSupportFragmentsWithViews(Ljava/util/Collection;Ljava/util/Map;)V

    const v0, 0x1020002

    .line 213
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    .line 215
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToSupportFragment:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 220
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 227
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->tempViewToSupportFragment:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->clear()V

    return-object v0
.end method

.method private fragmentGet(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 3

    .line 351
    invoke-virtual {p0, p2, p3}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->getRequestManagerFragment(Landroid/app/FragmentManager;Landroid/app/Fragment;)Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-result-object p2

    .line 352
    invoke-virtual {p2}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getRequestManager()Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    if-nez p3, :cond_0

    .line 355
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p3

    .line 356
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->factory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    .line 358
    invoke-virtual {p2}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getGlideLifecycle()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getRequestManagerTreeNode()Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    move-result-object v2

    .line 357
    invoke-interface {v0, p3, v1, v2, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;->build(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    .line 359
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/manager/RequestManagerFragment;->setRequestManager(Lcom/bumptech/glide/RequestManager;)V

    :cond_0
    return-object p3
.end method

.method private getApplicationManager(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->applicationManager:Lcom/bumptech/glide/RequestManager;

    if-nez v0, :cond_1

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->applicationManager:Lcom/bumptech/glide/RequestManager;

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->factory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    new-instance v2, Lcom/bumptech/glide/manager/ApplicationLifecycle;

    invoke-direct {v2}, Lcom/bumptech/glide/manager/ApplicationLifecycle;-><init>()V

    new-instance v3, Lcom/bumptech/glide/manager/EmptyRequestManagerTreeNode;

    invoke-direct {v3}, Lcom/bumptech/glide/manager/EmptyRequestManagerTreeNode;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 96
    invoke-interface {v1, v0, v2, v3, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;->build(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->applicationManager:Lcom/bumptech/glide/RequestManager;

    .line 102
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 105
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->applicationManager:Lcom/bumptech/glide/RequestManager;

    return-object p1
.end method

.method private supportFragmentGet(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 3

    .line 384
    invoke-virtual {p0, p2, p3}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->getSupportRequestManagerFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-result-object p2

    .line 385
    invoke-virtual {p2}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getRequestManager()Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    if-nez p3, :cond_0

    .line 388
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p3

    .line 389
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->factory:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    .line 391
    invoke-virtual {p2}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getGlideLifecycle()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getRequestManagerTreeNode()Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    move-result-object v2

    .line 390
    invoke-interface {v0, p3, v1, v2, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;->build(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    .line 392
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->setRequestManager(Lcom/bumptech/glide/RequestManager;)V

    :cond_0
    return-object p3
.end method


# virtual methods
.method public get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;
    .locals 2

    .line 150
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    return-object p1

    .line 153
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->assertNotDestroyed(Landroid/app/Activity;)V

    .line 154
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0, p1, v0, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->fragmentGet(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 2

    .line 318
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 322
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 326
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1, v0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->fragmentGet(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    return-object p1

    .line 323
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    return-object p1

    .line 319
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a fragment before it is attached"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .locals 1

    if-eqz p1, :cond_3

    .line 112
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_2

    .line 113
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 114
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    return-object p1

    .line 115
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 116
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    return-object p1

    .line 117
    :cond_1
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    .line 118
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    return-object p1

    .line 122
    :cond_2
    invoke-direct {p0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->getApplicationManager(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    return-object p1

    .line 111
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a null Context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;
    .locals 2

    .line 161
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    return-object p1

    .line 165
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Unable to obtain a request manager for a view without a Context"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    return-object p1

    .line 178
    :cond_1
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_3

    .line 179
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0, p1, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findSupportFragment(Landroid/view/View;Landroidx/fragment/app/FragmentActivity;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 180
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    :goto_0
    return-object p1

    .line 184
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->findFragment(Landroid/view/View;Landroid/app/Activity;)Landroid/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_4

    .line 186
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    return-object p1

    .line 188
    :cond_4
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 2

    .line 138
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "You cannot start a load on a fragment before it is attached or after it is destroyed"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    return-object p1

    .line 143
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0, v1, v0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->supportFragmentGet(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;
    .locals 2

    .line 127
    invoke-static {}, Lcom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    return-object p1

    .line 130
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->assertNotDestroyed(Landroid/app/Activity;)V

    .line 131
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p1, v0, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->supportFragmentGet(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    return-object p1
.end method

.method getRequestManagerFragment(Landroid/app/FragmentManager;Landroid/app/Fragment;)Lcom/bumptech/glide/manager/RequestManagerFragment;
    .locals 2

    const-string v0, "com.bumptech.glide.manager"

    .line 333
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/manager/RequestManagerFragment;

    if-nez v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingRequestManagerFragments:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/manager/RequestManagerFragment;

    if-nez v1, :cond_0

    .line 337
    new-instance v1, Lcom/bumptech/glide/manager/RequestManagerFragment;

    invoke-direct {v1}, Lcom/bumptech/glide/manager/RequestManagerFragment;-><init>()V

    .line 338
    invoke-virtual {v1, p2}, Lcom/bumptech/glide/manager/RequestManagerFragment;->setParentFragmentHint(Landroid/app/Fragment;)V

    .line 339
    iget-object p2, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingRequestManagerFragments:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 341
    iget-object p2, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-object v1
.end method

.method getSupportRequestManagerFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    .locals 2

    const-string v0, "com.bumptech.glide.manager"

    .line 367
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    if-nez v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    if-nez v1, :cond_0

    .line 371
    new-instance v1, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-direct {v1}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;-><init>()V

    .line 372
    invoke-virtual {v1, p2}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->setParentFragmentHint(Landroidx/fragment/app/Fragment;)V

    .line 373
    iget-object p2, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 375
    iget-object p2, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->handler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 402
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v2, 0x0

    move-object p1, v1

    goto :goto_1

    .line 409
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroidx/fragment/app/FragmentManager;

    .line 411
    iget-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 404
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/app/FragmentManager;

    .line 406
    iget-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerRetriever;->pendingRequestManagerFragments:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    :goto_1
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    const/4 v0, 0x5

    const-string v1, "RMRetriever"

    .line 417
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method
