.class public Lcom/xiaopeng/musicradio/search/logic/LogicRegisterMap;
.super Ljava/lang/Object;
.source "LogicRegisterMap.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicRegistry;
.end annotation


# static fields
.field private static mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static final registerMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/search/logic/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/search/logic/LogicRegisterMap;->mCache:Ljava/util/Map;

    .line 20
    sget-object v0, Lcom/xiaopeng/musicradio/search/logic/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.search.query_search_result"

    const-string v2, "com.xiaopeng.musicradio.search.logic.SearchResultLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/xiaopeng/musicradio/search/logic/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.search.search_history"

    const-string v2, "com.xiaopeng.musicradio.search.logic.SearchHistoryLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 1

    .line 47
    sget-object v0, Lcom/xiaopeng/musicradio/search/logic/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .line 25
    sget-object v0, Lcom/xiaopeng/musicradio/search/logic/LogicRegisterMap;->mCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    .line 29
    :cond_0
    sget-object v1, Lcom/xiaopeng/musicradio/search/logic/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 34
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAllSupportFunction()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/xiaopeng/musicradio/search/logic/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 53
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public static release()V
    .locals 1

    .line 43
    sget-object v0, Lcom/xiaopeng/musicradio/search/logic/LogicRegisterMap;->mCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
