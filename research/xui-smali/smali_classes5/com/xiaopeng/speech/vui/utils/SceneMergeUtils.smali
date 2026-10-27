.class public Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;
.super Ljava/lang/Object;
.source "SceneMergeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static duplicateRemoval(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    .line 39
    .local p0, "vuiElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v0, "dupMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v1, "dupParentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    new-instance v2, Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-direct {v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;-><init>()V

    .line 42
    .local v2, "emptyElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    invoke-virtual {v2, p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setElements(Ljava/util/List;)V

    .line 43
    const-string v3, "-1"

    invoke-virtual {v2, v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setId(Ljava/lang/String;)V

    .line 44
    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->findNode(Lcom/xiaopeng/vui/commons/model/VuiElement;Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/util/Map;Ljava/util/Map;)V

    .line 45
    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private static findNode(Lcom/xiaopeng/vui/commons/model/VuiElement;Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .param p0, "node"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .param p1, "parentElement"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p2, "dupMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local p3, "parentElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-nez p0, :cond_0

    .line 52
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 59
    .local v0, "dupElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-nez v0, :cond_1

    .line 60
    return-void

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getTimestamp()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 67
    .local v1, "parentEle":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-nez v1, :cond_2

    .line 68
    return-void

    .line 70
    :cond_2
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 71
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 73
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .end local v0    # "dupElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v1    # "parentEle":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :cond_4
    goto :goto_0

    .line 78
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v0

    .line 83
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v0, :cond_7

    .line 84
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-static {v2, p0, p2, p3}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->findNode(Lcom/xiaopeng/vui/commons/model/VuiElement;Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/util/Map;Ljava/util/Map;)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    .end local v1    # "i":I
    :cond_7
    return-void
.end method

.method public static declared-synchronized merge(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;
    .locals 5
    .param p2, "isAttribute"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    .local p0, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local p1, "updateElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    const-class v0, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;

    monitor-enter v0

    .line 91
    if-eqz p1, :cond_7

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 95
    :cond_0
    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 100
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, "indexs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 103
    .local v3, "vuiElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    invoke-static {p0, v3, v1, p2}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->mergeElement(Ljava/util/List;Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/util/List;Z)V

    .line 104
    .end local v3    # "vuiElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    goto :goto_0

    .line 106
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 107
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v2, v3, :cond_5

    .line 109
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 110
    .restart local v3    # "vuiElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 111
    goto :goto_1

    .line 113
    :cond_3
    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 115
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v3    # "vuiElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :cond_4
    goto :goto_1

    .line 119
    :cond_5
    monitor-exit v0

    return-object p0

    .line 97
    .end local v1    # "indexs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :goto_2
    monitor-exit v0

    return-object p1

    .line 90
    .end local p0    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local p1    # "updateElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local p2    # "isAttribute":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 92
    .restart local p0    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local p1    # "updateElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local p2    # "isAttribute":Z
    :cond_7
    :goto_3
    monitor-exit v0

    return-object p0
.end method

.method private static mergeElement(Ljava/util/List;Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/util/List;Z)V
    .locals 4
    .param p1, "element"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .param p3, "isAttribute"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 209
    .local p0, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local p2, "indexs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_5

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 213
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 214
    .local v1, "elt":Lcom/xiaopeng/vui/commons/model/VuiElement;
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 216
    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 217
    .local v0, "index":I
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 218
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setElements(Ljava/util/List;)V

    .line 222
    :cond_1
    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    goto :goto_1

    .line 227
    .end local v0    # "index":I
    :cond_2
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 228
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, p1, p2, p3}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->mergeElement(Ljava/util/List;Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/util/List;Z)V

    .line 231
    .end local v1    # "elt":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :cond_3
    goto :goto_0

    .line 232
    :cond_4
    :goto_1
    return-void

    .line 210
    :cond_5
    :goto_2
    return-void
.end method

.method private static removeElement(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 173
    .local p0, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p0, :cond_0

    goto :goto_2

    .line 177
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 178
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 179
    .local v1, "elt":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v1, :cond_2

    .line 180
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 182
    add-int/lit8 v0, v0, -0x1

    .line 183
    goto :goto_1

    .line 186
    :cond_1
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 187
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->removeElement(Ljava/util/List;Ljava/lang/String;)V

    .line 177
    .end local v1    # "elt":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "i":I
    :cond_3
    :goto_1
    return-void

    .line 174
    :cond_4
    :goto_2
    return-void
.end method

.method private static removeElement(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 3
    .param p0, "elements"    # Lorg/json/JSONArray;
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 236
    if-eqz p1, :cond_4

    if-nez p0, :cond_0

    goto :goto_2

    .line 240
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 241
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 242
    .local v1, "elt":Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 246
    goto :goto_1

    .line 248
    :cond_1
    const-string v2, "elements"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "elements"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 249
    const-string v2, "elements"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->removeElement(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 240
    .end local v1    # "elt":Lorg/json/JSONObject;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    .end local v0    # "i":I
    :cond_3
    :goto_1
    return-void

    .line 237
    :cond_4
    :goto_2
    return-void
.end method

.method public static removeElementById(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p0, "sceneStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 140
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    return-object p0

    .line 144
    :cond_0
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 150
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "oldScene":Lorg/json/JSONObject;
    const-string v1, "elements"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 152
    return-object p0

    .line 155
    :cond_2
    const-string v1, "elements"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 158
    .local v1, "els":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 159
    .local v3, "id":Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->removeElement(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 160
    .end local v3    # "id":Ljava/lang/String;
    goto :goto_0

    .line 162
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 163
    .end local v0    # "oldScene":Lorg/json/JSONObject;
    .end local v1    # "els":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0

    .line 145
    :cond_4
    :goto_1
    return-object p0
.end method

.method public static declared-synchronized removeElementById(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    .local p0, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v0, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;

    monitor-enter v0

    .line 124
    if-eqz p0, :cond_4

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 128
    :cond_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 133
    .local v2, "id":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->removeElement(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local v2    # "id":Ljava/lang/String;
    goto :goto_0

    .line 136
    :cond_2
    monitor-exit v0

    return-object p0

    .line 129
    :cond_3
    :goto_1
    monitor-exit v0

    return-object p0

    .line 123
    .end local p0    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local p1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 125
    .restart local p0    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local p1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :goto_2
    monitor-exit v0

    return-object p0
.end method

.method public static declared-synchronized updateMerge(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;
    .locals 3
    .param p2, "isAttribute"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    .local p0, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local p1, "updateElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    const-class v0, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;

    monitor-enter v0

    .line 26
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->merge(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 27
    .local v1, "vuiElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->duplicateRemoval(Ljava/util/List;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    .line 28
    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    .line 25
    .end local v1    # "vuiElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local p0    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local p1    # "updateElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local p2    # "isAttribute":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
