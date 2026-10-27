.class public Lcom/xiaopeng/xuiservice/utils/MaxSizeMap;
.super Ljava/util/LinkedHashMap;
.source "MaxSizeMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private maxSize:I


# direct methods
.method private constructor <init>(I)V
    .locals 2
    .param p1, "maxSize"    # I

    .line 19
    .local p0, "this":Lcom/xiaopeng/xuiservice/utils/MaxSizeMap;, "Lcom/xiaopeng/xuiservice/utils/MaxSizeMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 20
    iput p1, p0, Lcom/xiaopeng/xuiservice/utils/MaxSizeMap;->maxSize:I

    .line 21
    return-void
.end method

.method public static create(I)Ljava/util/Map;
    .locals 1
    .param p0, "maxSize"    # I

    .line 15
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/MaxSizeMap;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/utils/MaxSizeMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 25
    .local p0, "this":Lcom/xiaopeng/xuiservice/utils/MaxSizeMap;, "Lcom/xiaopeng/xuiservice/utils/MaxSizeMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/utils/MaxSizeMap;->size()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/utils/MaxSizeMap;->maxSize:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
