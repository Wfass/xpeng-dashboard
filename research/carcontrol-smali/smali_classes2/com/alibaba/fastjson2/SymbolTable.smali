.class public final Lcom/alibaba/fastjson2/SymbolTable;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# instance fields
.field private final hashCode64:J

.field private final hashCodes:[J

.field private final hashCodesOrigin:[J

.field private final mapping:[S

.field private final names:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 6

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 20
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/fastjson2/SymbolTable;->names:[Ljava/lang/String;

    .line 21
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 23
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/SymbolTable;->names:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    iget-object v2, p0, Lcom/alibaba/fastjson2/SymbolTable;->names:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_1
    array-length p1, v2

    new-array v1, p1, [J

    move v2, v0

    .line 30
    :goto_1
    iget-object v3, p0, Lcom/alibaba/fastjson2/SymbolTable;->names:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 31
    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v3

    .line 32
    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 34
    :cond_2
    iput-object v1, p0, Lcom/alibaba/fastjson2/SymbolTable;->hashCodesOrigin:[J

    .line 36
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson2/SymbolTable;->hashCodes:[J

    .line 37
    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    .line 39
    array-length v2, v2

    new-array v2, v2, [S

    iput-object v2, p0, Lcom/alibaba/fastjson2/SymbolTable;->mapping:[S

    move v2, v0

    :goto_2
    if-ge v2, p1, :cond_3

    .line 41
    aget-wide v3, v1, v2

    .line 42
    iget-object v5, p0, Lcom/alibaba/fastjson2/SymbolTable;->hashCodes:[J

    invoke-static {v5, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    .line 43
    iget-object v4, p0, Lcom/alibaba/fastjson2/SymbolTable;->mapping:[S

    int-to-short v5, v2

    aput-short v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    :goto_3
    if-ge v0, p1, :cond_4

    .line 47
    aget-wide v4, v1, v0

    xor-long/2addr v2, v4

    const-wide v4, 0x100000001b3L

    mul-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 51
    :cond_4
    iput-wide v2, p0, Lcom/alibaba/fastjson2/SymbolTable;->hashCode64:J

    return-void
.end method


# virtual methods
.method public getHashCode(I)J
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/alibaba/fastjson2/SymbolTable;->hashCodesOrigin:[J

    add-int/lit8 p1, p1, -0x1

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/alibaba/fastjson2/SymbolTable;->names:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getNameByHashCode(J)Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alibaba/fastjson2/SymbolTable;->hashCodes:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 68
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/SymbolTable;->mapping:[S

    aget-short p1, p2, p1

    .line 69
    iget-object p2, p0, Lcom/alibaba/fastjson2/SymbolTable;->names:[Ljava/lang/String;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public getOrdinal(Ljava/lang/String;)I
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/alibaba/fastjson2/SymbolTable;->hashCodes:[J

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/SymbolTable;->mapping:[S

    aget-short p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getOrdinalByHashCode(J)I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alibaba/fastjson2/SymbolTable;->hashCodes:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 78
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/SymbolTable;->mapping:[S

    aget-short p1, p2, p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public hashCode64()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/alibaba/fastjson2/SymbolTable;->hashCode64:J

    return-wide v0
.end method

.method public size()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/fastjson2/SymbolTable;->names:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method
