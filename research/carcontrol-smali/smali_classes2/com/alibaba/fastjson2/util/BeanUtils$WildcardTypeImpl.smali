.class final Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;
.super Ljava/lang/Object;
.source "BeanUtils.java"

# interfaces
.implements Ljava/lang/reflect/WildcardType;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/util/BeanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WildcardTypeImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final lowerBound:Ljava/lang/reflect/Type;

.field private final upperBound:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 3

    .line 2277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2278
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->checkArgument(Z)V

    .line 2279
    array-length v0, p1

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->checkArgument(Z)V

    .line 2281
    array-length v0, p2

    if-ne v0, v1, :cond_3

    .line 2282
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->checkNotPrimitive(Ljava/lang/reflect/Type;)V

    .line 2283
    aget-object p1, p1, v2

    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->checkArgument(Z)V

    .line 2284
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    .line 2285
    const-class p1, Ljava/lang/Object;

    iput-object p1, p0, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    goto :goto_3

    .line 2287
    :cond_3
    aget-object p2, p1, v2

    invoke-static {p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->checkNotPrimitive(Ljava/lang/reflect/Type;)V

    const/4 p2, 0x0

    .line 2288
    iput-object p2, p0, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    .line 2289
    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    :goto_3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 2305
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 2306
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .locals 3

    .line 2300
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/util/BeanUtils;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    :goto_0
    return-object v1
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    .line 2295
    iget-object v1, p0, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 2312
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    .line 2313
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2318
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    .line 2319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2320
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    const-string v0, "?"

    return-object v0

    .line 2323
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
