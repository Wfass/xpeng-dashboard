.class Landroid/support/v4/media/MediaBrowserCompat$Subscription;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Subscription"
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mOptionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2041
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mCallbacks:Ljava/util/List;

    .line 2042
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mOptionsList:Ljava/util/List;

    .line 2043
    return-void
.end method


# virtual methods
.method public getCallback(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
    .locals 1

    .line 2058
    if-eqz p2, :cond_0

    .line 2059
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2061
    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 2062
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0, p2}, Landroid/support/v4/media/MediaBrowserCompatUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2063
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    return-object p1

    .line 2061
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2066
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;",
            ">;"
        }
    .end annotation

    .line 2054
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 2050
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mOptionsList:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 2046
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public putCallback(Landroid/content/Context;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 1

    .line 2070
    if-eqz p2, :cond_0

    .line 2071
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2073
    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 2074
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0, p2}, Landroid/support/v4/media/MediaBrowserCompatUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2075
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {p2, p1, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2076
    return-void

    .line 2073
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2079
    :cond_2
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mCallbacks:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2080
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mOptionsList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2081
    return-void
.end method
