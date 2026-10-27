.class Landroidx/recyclerview/selection/StorageStrategy$ParcelableStorageStrategy;
.super Landroidx/recyclerview/selection/StorageStrategy;
.source "StorageStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/selection/StorageStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParcelableStorageStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Landroid/os/Parcelable;",
        ">",
        "Landroidx/recyclerview/selection/StorageStrategy<",
        "TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TK;>;)V"
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1}, Landroidx/recyclerview/selection/StorageStrategy;-><init>(Ljava/lang/Class;)V

    .line 196
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 197
    return-void
.end method


# virtual methods
.method public asBundle(Landroidx/recyclerview/selection/Selection;)Landroid/os/Bundle;
    .locals 3
    .param p1    # Landroidx/recyclerview/selection/Selection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/selection/Selection<",
            "TK;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 220
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 221
    const-string v1, "androidx.recyclerview.selection.type"

    invoke-virtual {p0}, Landroidx/recyclerview/selection/StorageStrategy$ParcelableStorageStrategy;->getKeyTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/recyclerview/selection/Selection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    iget-object p1, p1, Landroidx/recyclerview/selection/Selection;->mSelection:Ljava/util/Set;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 225
    const-string p1, "androidx.recyclerview.selection.entries"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 227
    return-object v0
.end method

.method public asSelection(Landroid/os/Bundle;)Landroidx/recyclerview/selection/Selection;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/recyclerview/selection/Selection<",
            "TK;>;"
        }
    .end annotation

    .line 202
    const-string v0, "androidx.recyclerview.selection.type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/selection/StorageStrategy$ParcelableStorageStrategy;->getKeyTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    const-string v0, "androidx.recyclerview.selection.entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 208
    if-nez p1, :cond_1

    .line 209
    return-object v1

    .line 212
    :cond_1
    new-instance v0, Landroidx/recyclerview/selection/Selection;

    invoke-direct {v0}, Landroidx/recyclerview/selection/Selection;-><init>()V

    .line 213
    iget-object v1, v0, Landroidx/recyclerview/selection/Selection;->mSelection:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 214
    return-object v0

    .line 204
    :cond_2
    :goto_0
    return-object v1
.end method
