.class public Labm;
.super Ljava/lang/Object;
.source "ParameterizedTypeImpl.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation runtime Lqd;
    b = "java.lang.reflect.ParameterizedType"
.end annotation


# instance fields
.field private final actualTypeArguments:[Ljava/lang/reflect/Type;

.field private final ownerType:Ljava/lang/reflect/Type;

.field private final rawType:Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Labm;->rawType:Ljava/lang/reflect/Type;

    .line 28
    iput-object p2, p0, Labm;->actualTypeArguments:[Ljava/lang/reflect/Type;

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Labm;->ownerType:Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation runtime Lqb;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Labm;->actualTypeArguments:[Ljava/lang/reflect/Type;

    .line 22
    iput-object p2, p0, Labm;->ownerType:Ljava/lang/reflect/Type;

    .line 23
    iput-object p3, p0, Labm;->rawType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    check-cast p1, Labm;

    .line 59
    iget-object v1, p0, Labm;->actualTypeArguments:[Ljava/lang/reflect/Type;

    iget-object v2, p1, Labm;->actualTypeArguments:[Ljava/lang/reflect/Type;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 62
    :cond_2
    iget-object v1, p0, Labm;->ownerType:Ljava/lang/reflect/Type;

    iget-object v2, p1, Labm;->ownerType:Ljava/lang/reflect/Type;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 65
    :cond_3
    iget-object v0, p0, Labm;->rawType:Ljava/lang/reflect/Type;

    iget-object p1, p1, Labm;->rawType:Ljava/lang/reflect/Type;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    .line 34
    iget-object v0, p0, Labm;->actualTypeArguments:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .line 39
    iget-object v0, p0, Labm;->ownerType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .line 44
    iget-object v0, p0, Labm;->rawType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 70
    iget-object v0, p0, Labm;->actualTypeArguments:[Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-object v2, p0, Labm;->ownerType:Ljava/lang/reflect/Type;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 72
    iget-object v2, p0, Labm;->rawType:Ljava/lang/reflect/Type;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method
