.class Landroidx/recyclerview/selection/StorageStrategy$LongStorageStrategy;
.super Landroidx/recyclerview/selection/StorageStrategy;
.source "StorageStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/selection/StorageStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongStorageStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/selection/StorageStrategy<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 152
    const-class v0, Ljava/lang/Long;

    invoke-direct {p0, v0}, Landroidx/recyclerview/selection/StorageStrategy;-><init>(Ljava/lang/Class;)V

    .line 153
    return-void
.end method


# virtual methods
.method public asBundle(Landroidx/recyclerview/selection/Selection;)Landroid/os/Bundle;
    .locals 7
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
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 177
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 178
    const-string v1, "androidx.recyclerview.selection.type"

    invoke-virtual {p0}, Landroidx/recyclerview/selection/StorageStrategy$LongStorageStrategy;->getKeyTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Landroidx/recyclerview/selection/Selection;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 181
    nop

    .line 182
    invoke-virtual {p1}, Landroidx/recyclerview/selection/Selection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 183
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v1, v2

    .line 184
    nop

    .line 182
    move v2, v4

    goto :goto_0

    .line 185
    :cond_0
    const-string p1, "androidx.recyclerview.selection.entries"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 187
    return-object v0
.end method

.method public asSelection(Landroid/os/Bundle;)Landroidx/recyclerview/selection/Selection;
    .locals 6
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 157
    const-string v0, "androidx.recyclerview.selection.type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/selection/StorageStrategy$LongStorageStrategy;->getKeyTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    const-string v0, "androidx.recyclerview.selection.entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p1

    .line 163
    if-nez p1, :cond_1

    .line 164
    return-object v1

    .line 167
    :cond_1
    new-instance v0, Landroidx/recyclerview/selection/Selection;

    invoke-direct {v0}, Landroidx/recyclerview/selection/Selection;-><init>()V

    .line 168
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-wide v3, p1, v2

    .line 169
    iget-object v5, v0, Landroidx/recyclerview/selection/Selection;->mSelection:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_2
    return-object v0

    .line 159
    :cond_3
    :goto_1
    return-object v1
.end method
