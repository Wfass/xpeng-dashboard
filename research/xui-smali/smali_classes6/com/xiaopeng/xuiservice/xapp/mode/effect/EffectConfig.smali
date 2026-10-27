.class public Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectConfig;
.super Ljava/lang/Object;
.source "EffectConfig.java"


# static fields
.field public static final DEFAULT_EFFECT_INDEX:I = 0x1

.field public static final HOT_EFFECT_INDEX:I = 0x0

.field public static final INDEX_EFFECT_ELECTRIC:I = 0x8

.field public static final INDEX_EFFECT_FEMALE:I = 0x9

.field public static final INDEX_EFFECT_FOLK:I = 0x4

.field public static final INDEX_EFFECT_KTV:I = 0x0

.field public static final INDEX_EFFECT_LIVE:I = 0x1

.field public static final INDEX_EFFECT_MALE:I = 0xa

.field public static final INDEX_EFFECT_MALE_VOICE:I = 0x7

.field public static final INDEX_EFFECT_POP:I = 0x3

.field public static final INDEX_EFFECT_PROFESSION:I = 0x2

.field public static final INDEX_EFFECT_RAP:I = 0x5

.field public static final INDEX_EFFECT_SURROUND:I = 0xe

.field public static final SHOW_EFFECT_ARRAY:[I

.field private static final TAG:Ljava/lang/String; = "EffectConfig"

.field public static final TYPE_EFFECT:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectConfig;->SHOW_EFFECT_ARRAY:[I

    return-void

    :array_0
    .array-data 4
        0xe
        0x0
        0x2
        0x5
        0x1
        0x4
        0xa
        0x9
        0x8
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEffectInfo(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 42
    .local p0, "source":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 44
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string/jumbo v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEffectList(Ljava/util/HashMap;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;",
            ">;"
        }
    .end annotation

    .line 30
    .local p0, "source":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v0, "effectItems":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectConfig;->SHOW_EFFECT_ARRAY:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 32
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 33
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectConfig;->SHOW_EFFECT_ARRAY:[I

    aget v5, v5, v1

    if-ne v4, v5, :cond_0

    .line 34
    new-instance v4, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_1

    .line 31
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method
