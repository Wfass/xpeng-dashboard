.class public Lsi;
.super Ljava/lang/Object;
.source "TypeCollector.java"


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Ljava/lang/String;

.field final c:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected d:Lsd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "int"

    const-string v2, "I"

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "boolean"

    const-string v2, "Z"

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "byte"

    const-string v2, "B"

    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "char"

    const-string v2, "C"

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "short"

    const-string v2, "S"

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "float"

    const-string v2, "F"

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "long"

    const-string v2, "J"

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "double"

    const-string v2, "D"

    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sput-object v0, Lsi;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lsi;->b:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lsi;->c:[Ljava/lang/Class;

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lsi;->d:Lsd;

    return-void
.end method

.method private a(Lsh;Ljava/lang/String;)Z
    .locals 3

    .line 78
    invoke-virtual {p1}, Lsh;->b()Ljava/lang/String;

    move-result-object p1

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string v1, "[]"

    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5b

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    sget-object v1, Lsi;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    sget-object v1, Lsi;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/16 v1, 0x4c

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    :cond_2
    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected a(ILjava/lang/String;Ljava/lang/String;)Lsd;
    .locals 5

    .line 39
    iget-object v0, p0, Lsi;->d:Lsd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 43
    :cond_0
    iget-object v0, p0, Lsi;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return-object v1

    .line 47
    :cond_1
    invoke-static {p3}, Lsh;->a(Ljava/lang/String;)[Lsh;

    move-result-object p2

    const/4 p3, 0x0

    move v0, p3

    move v2, v0

    .line 49
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_4

    .line 50
    aget-object v3, p2, v0

    .line 51
    invoke-virtual {v3}, Lsh;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "long"

    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "double"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_4
    array-length v0, p2

    iget-object v3, p0, Lsi;->c:[Ljava/lang/Class;

    array-length v3, v3

    if-eq v0, v3, :cond_5

    return-object v1

    .line 60
    :cond_5
    :goto_1
    array-length v0, p2

    if-ge p3, v0, :cond_7

    .line 61
    aget-object v0, p2, p3

    iget-object v3, p0, Lsi;->c:[Ljava/lang/Class;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lsi;->a(Lsh;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 66
    :cond_7
    new-instance p3, Lsd;

    .line 67
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    array-length p2, p2

    add-int/2addr p2, v2

    invoke-direct {p3, p1, p2}, Lsd;-><init>(II)V

    iput-object p3, p0, Lsi;->d:Lsd;

    return-object p3
.end method

.method public a()[Ljava/lang/String;
    .locals 2

    .line 96
    iget-object v0, p0, Lsi;->d:Lsd;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lsd;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lsi;->d:Lsd;

    invoke-virtual {v0}, Lsd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 97
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
