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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbye;",
            ">;)",
            "Ljava/util/List<",
            "Lbye;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 41
    new-instance v2, Lbye;

    invoke-direct {v2}, Lbye;-><init>()V

    .line 42
    invoke-virtual {v2, p0}, Lbye;->setElements(Ljava/util/List;)V

    const-string p0, "-1"

    .line 43
    invoke-virtual {v2, p0}, Lbye;->setId(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 44
    invoke-static {v2, p0, v0, v1}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->findNode(Lbye;Lbye;Ljava/util/Map;Ljava/util/Map;)V

    .line 45
    invoke-virtual {v2}, Lbye;->getElements()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static findNode(Lbye;Lbye;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbye;",
            "Lbye;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lbye;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lbye;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 56
    invoke-virtual {p0}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    invoke-virtual {p0}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbye;

    if-nez v0, :cond_1

    return-void

    .line 63
    :cond_1
    invoke-virtual {p0}, Lbye;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0}, Lbye;->getTimestamp()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-ltz v0, :cond_5

    .line 65
    invoke-virtual {p0}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbye;

    if-nez v0, :cond_2

    return-void

    .line 70
    :cond_2
    invoke-virtual {v0}, Lbye;->getElements()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lbye;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 71
    invoke-virtual {v0}, Lbye;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lbye;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 73
    :cond_3
    invoke-virtual {p0}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {p0}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 78
    :cond_4
    invoke-virtual {p0}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p0}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lbye;->getElements()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    .line 84
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 85
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbye;

    invoke-static {v1, p0, p2, p3}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->findNode(Lbye;Lbye;Ljava/util/Map;Ljava/util/Map;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public static declared-synchronized merge(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbye;",
            ">;",
            "Ljava/util/List<",
            "Lbye;",
            ">;Z)",
            "Ljava/util/List<",
            "Lbye;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;

    monitor-enter v0

    if-eqz p1, :cond_7

    .line 91
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p0, :cond_6

    .line 95
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 100
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbye;

    .line 103
    invoke-static {p0, v3, v1, p2}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->mergeElement(Ljava/util/List;Lbye;Ljava/util/List;Z)V

    goto :goto_0

    .line 106
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eq p2, v2, :cond_5

    .line 107
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le p2, v2, :cond_5

    .line 109
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbye;

    .line 110
    invoke-virtual {p2}, Lbye;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 113
    :cond_4
    invoke-virtual {p2}, Lbye;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 115
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 119
    :cond_5
    monitor-exit v0

    return-object p0

    .line 97
    :cond_6
    :goto_2
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 92
    :cond_7
    :goto_3
    monitor-exit v0

    return-object p0
.end method

.method private static mergeElement(Ljava/util/List;Lbye;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbye;",
            ">;",
            "Lbye;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    .line 209
    invoke-virtual {p1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 213
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbye;

    .line 214
    invoke-virtual {p1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 216
    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eqz p3, :cond_2

    .line 217
    invoke-virtual {p1}, Lbye;->getElements()Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_2

    invoke-virtual {v1}, Lbye;->getElements()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 218
    invoke-virtual {v1}, Lbye;->getElements()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, p3}, Lbye;->setElements(Ljava/util/List;)V

    .line 222
    :cond_2
    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {p1}, Lbye;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 227
    :cond_3
    invoke-virtual {v1}, Lbye;->getElements()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lbye;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 228
    invoke-virtual {v1}, Lbye;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->mergeElement(Ljava/util/List;Lbye;Ljava/util/List;Z)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private static removeElement(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbye;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 177
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 178
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbye;

    if-eqz v1, :cond_2

    .line 180
    invoke-virtual {v1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 186
    :cond_1
    invoke-virtual {v1}, Lbye;->getElements()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lbye;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 187
    invoke-virtual {v1}, Lbye;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->removeElement(Ljava/util/List;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private static removeElement(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 240
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 241
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "id"

    .line 242
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 243
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v2, "elements"

    .line 248
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 249
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->removeElement(Lorg/json/JSONArray;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static removeElementById(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
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

    const-string v0, "elements"

    .line 140
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_4

    .line 144
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 150
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object p0

    .line 155
    :cond_2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    invoke-static {p0, v0}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->removeElement(Lorg/json/JSONArray;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    :cond_4
    :goto_1
    return-object p0
.end method

.method public static declared-synchronized removeElementById(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbye;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lbye;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;

    monitor-enter v0

    if-eqz p0, :cond_4

    .line 124
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_3

    .line 128
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    invoke-static {p0, v1}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->removeElement(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 125
    :cond_4
    :goto_2
    monitor-exit v0

    return-object p0
.end method

.method public static declared-synchronized updateMerge(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbye;",
            ">;",
            "Ljava/util/List<",
            "Lbye;",
            ">;Z)",
            "Ljava/util/List<",
            "Lbye;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;

    monitor-enter v0

    .line 26
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->merge(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 27
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->duplicateRemoval(Ljava/util/List;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 28
    :cond_1
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
