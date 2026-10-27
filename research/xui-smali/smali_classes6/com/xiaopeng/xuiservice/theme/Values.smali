.class public Lcom/xiaopeng/xuiservice/theme/Values;
.super Ljava/lang/Object;
.source "Values.java"


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private booleanArrays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private booleans:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private colorArrays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private colors:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private dimensionArrays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private dimensions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private floatArrays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private floats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private integerArrays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private integers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private stringArrays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private strings:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 125
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/xiaopeng/xuiservice/theme/Values;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$appendBooleanArray$1(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "k"    # Ljava/lang/String;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$appendColorArray$4(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "k"    # Ljava/lang/String;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$appendDimensionArray$5(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "k"    # Ljava/lang/String;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$appendFloatArray$3(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "k"    # Ljava/lang/String;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$appendIntegerArray$2(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "k"    # Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$appendStringArray$0(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "k"    # Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static unboxBooleanArray(Ljava/util/ArrayList;)[Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)[Z"
        }
    .end annotation

    .line 210
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/CollectionUtil;->sizeOf(Ljava/util/Collection;)I

    move-result v0

    .line 211
    .local v0, "size":I
    new-array v1, v0, [Z

    .line 212
    .local v1, "array":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 213
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static unboxDoubleArray(Ljava/util/ArrayList;)[D
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;)[D"
        }
    .end annotation

    .line 228
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/CollectionUtil;->sizeOf(Ljava/util/Collection;)I

    move-result v0

    .line 229
    .local v0, "size":I
    new-array v1, v0, [D

    .line 230
    .local v1, "array":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 231
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static unboxIntegerArray(Ljava/util/ArrayList;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 219
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/CollectionUtil;->sizeOf(Ljava/util/Collection;)I

    move-result v0

    .line 220
    .local v0, "size":I
    new-array v1, v0, [I

    .line 221
    .local v1, "array":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 222
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method public appendBooleanArray(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Z

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->booleanArrays:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->booleanArrays:Landroid/util/ArrayMap;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->booleanArrays:Landroid/util/ArrayMap;

    sget-object v1, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$FcrHwyE7TqXsHAvb0foEpzWtwNk;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$FcrHwyE7TqXsHAvb0foEpzWtwNk;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method public appendColorArray(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "color"    # I

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->colorArrays:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->colorArrays:Landroid/util/ArrayMap;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->colorArrays:Landroid/util/ArrayMap;

    sget-object v1, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$qWoOawKqedRJpj4rx06pbTc4MbI;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$qWoOawKqedRJpj4rx06pbTc4MbI;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method public appendDimensionArray(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dimen"    # I

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->dimensionArrays:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->dimensionArrays:Landroid/util/ArrayMap;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->dimensionArrays:Landroid/util/ArrayMap;

    sget-object v1, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$EnOz2OC213oMC7KjY-fXzjIVSU0;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$EnOz2OC213oMC7KjY-fXzjIVSU0;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public appendFloatArray(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # D

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->floatArrays:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->floatArrays:Landroid/util/ArrayMap;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->floatArrays:Landroid/util/ArrayMap;

    sget-object v1, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$qXyjKBseVEJfArSgXVyPbxZTQGc;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$qXyjKBseVEJfArSgXVyPbxZTQGc;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method public appendIntegerArray(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # I

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->integerArrays:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->integerArrays:Landroid/util/ArrayMap;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->integerArrays:Landroid/util/ArrayMap;

    sget-object v1, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$yNsvc9vdNelg9_R2kX7NtJ3u4S0;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$yNsvc9vdNelg9_R2kX7NtJ3u4S0;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method public appendStringArray(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->stringArrays:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->stringArrays:Landroid/util/ArrayMap;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->stringArrays:Landroid/util/ArrayMap;

    sget-object v1, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$8iwbwxcjnJnfBmkqkcs2aEXSrKk;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$8iwbwxcjnJnfBmkqkcs2aEXSrKk;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fallback"    # Ljava/lang/Boolean;

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->booleans:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->booleans:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 57
    .local v0, "value":Ljava/lang/Boolean;
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    return-object v1
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->booleanArrays:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->booleanArrays:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 143
    .local v0, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/Values;->unboxBooleanArray(Ljava/util/ArrayList;)[Z

    move-result-object v1

    nop

    :cond_1
    return-object v1
.end method

.method public getColor(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fallback"    # Ljava/lang/Integer;

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->colors:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->colors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 99
    .local v0, "value":Ljava/lang/Integer;
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    return-object v1
.end method

.method public getColorArray(Ljava/lang/String;)[I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->colorArrays:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->colorArrays:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 185
    .local v0, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/Values;->unboxIntegerArray(Ljava/util/ArrayList;)[I

    move-result-object v1

    nop

    :cond_1
    return-object v1
.end method

.method public getDimension(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fallback"    # Ljava/lang/Integer;

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->dimensions:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->dimensions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 113
    .local v0, "value":Ljava/lang/Integer;
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    return-object v1
.end method

.method public getDimensionArray(Ljava/lang/String;)[I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->dimensionArrays:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->dimensionArrays:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 199
    .local v0, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/Values;->unboxIntegerArray(Ljava/util/ArrayList;)[I

    move-result-object v1

    nop

    :cond_1
    return-object v1
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fallback"    # Ljava/lang/Double;

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->floats:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->floats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 85
    .local v0, "value":Ljava/lang/Double;
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    return-object v1
.end method

.method public getFloatArray(Ljava/lang/String;)[D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->floatArrays:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->floatArrays:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 171
    .local v0, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/Values;->unboxDoubleArray(Ljava/util/ArrayList;)[D

    move-result-object v1

    nop

    :cond_1
    return-object v1
.end method

.method public getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fallback"    # Ljava/lang/Integer;

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->integers:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->integers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 71
    .local v0, "value":Ljava/lang/Integer;
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    return-object v1
.end method

.method public getIntegerArray(Ljava/lang/String;)[I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->integerArrays:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->integerArrays:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 157
    .local v0, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/theme/Values;->unboxIntegerArray(Ljava/util/ArrayList;)[I

    move-result-object v1

    nop

    :cond_1
    return-object v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fallback"    # Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->strings:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->strings:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 43
    .local v0, "value":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    return-object v1
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->stringArrays:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->stringArrays:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 129
    .local v0, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/xiaopeng/xuiservice/theme/Values;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    nop

    :cond_1
    return-object v1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Z

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->booleans:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->booleans:Landroid/util/ArrayMap;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->booleans:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public putColor(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "color"    # I

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->colors:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->colors:Landroid/util/ArrayMap;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->colors:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public putDimension(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "dimen"    # I

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->dimensions:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->dimensions:Landroid/util/ArrayMap;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->dimensions:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public putFloat(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # D

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->floats:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->floats:Landroid/util/ArrayMap;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->floats:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public putInteger(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # I

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->integers:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->integers:Landroid/util/ArrayMap;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->integers:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->strings:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->strings:Landroid/util/ArrayMap;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/Values;->strings:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method
