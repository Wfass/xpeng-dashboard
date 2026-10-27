.class public final Lxt;
.super Ljava/lang/Object;
.source "ObjectReaderImplEnum.java"

# interfaces
.implements Lwk;


# instance fields
.field final a:Ljava/lang/reflect/Method;

.field final b:Ljava/lang/reflect/Type;

.field final c:Ljava/lang/reflect/Member;

.field final d:Ljava/lang/reflect/Type;

.field final e:Ljava/lang/Class;

.field final g:J

.field private final h:[Ljava/lang/Enum;

.field private final i:[Ljava/lang/Enum;

.field private final j:[J

.field private k:[Ljava/lang/String;

.field private l:[J


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Member;[Ljava/lang/Enum;[Ljava/lang/Enum;[J)V
    .locals 8

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lxt;->e:Ljava/lang/Class;

    .line 38
    iput-object p2, p0, Lxt;->a:Ljava/lang/reflect/Method;

    .line 39
    iput-object p3, p0, Lxt;->c:Ljava/lang/reflect/Member;

    .line 41
    instance-of v0, p3, Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 42
    move-object v0, p3

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_0
    instance-of v0, p3, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 44
    move-object v0, p3

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 46
    :goto_0
    iput-object v0, p0, Lxt;->d:Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 49
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_2

    .line 50
    array-length v3, p4

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lxt;->k:[Ljava/lang/String;

    goto :goto_1

    .line 52
    :cond_2
    array-length v3, p4

    new-array v3, v3, [J

    iput-object v3, p0, Lxt;->l:[J

    :goto_1
    move v3, v2

    .line 55
    :goto_2
    array-length v4, p4

    if-ge v3, v4, :cond_6

    .line 56
    aget-object v4, p4, v3

    .line 59
    :try_start_0
    instance-of v5, p3, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_3

    .line 60
    move-object v5, p3

    check-cast v5, Ljava/lang/reflect/Field;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    .line 62
    :cond_3
    move-object v5, p3

    check-cast v5, Ljava/lang/reflect/Method;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 65
    :goto_3
    const-class v5, Ljava/lang/String;

    if-ne v0, v5, :cond_4

    .line 66
    iget-object v5, p0, Lxt;->k:[Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    aput-object v4, v5, v3

    goto :goto_4

    .line 67
    :cond_4
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_5

    .line 68
    iget-object v5, p0, Lxt;->l:[J

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    aput-wide v6, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    .line 77
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_7

    .line 78
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    aget-object v1, p2, v2

    .line 80
    :cond_7
    iput-object v1, p0, Lxt;->b:Ljava/lang/reflect/Type;

    .line 82
    invoke-static {p1}, Labo;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Labc;->b(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lxt;->g:J

    .line 83
    iput-object p4, p0, Lxt;->h:[Ljava/lang/Enum;

    .line 84
    iput-object p5, p0, Lxt;->i:[Ljava/lang/Enum;

    .line 85
    iput-object p6, p0, Lxt;->j:[J

    return-void
.end method

.method private a(Ljava/lang/reflect/Type;)V
    .locals 2

    .line 210
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 211
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 212
    const-class v0, Ljava/util/List;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " parses error, JSONReader not forward when field type belongs to collection to avoid OOM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Enum;
    .locals 6

    .line 123
    iget-object v0, p0, Lxt;->c:Ljava/lang/reflect/Member;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    .line 124
    iget-object v0, p0, Lxt;->i:[Ljava/lang/Enum;

    array-length v2, v0

    if-ge p1, v2, :cond_0

    .line 125
    aget-object v1, v0, p1

    :cond_0
    return-object v1

    .line 131
    :cond_1
    :try_start_0
    instance-of v2, v0, Ljava/lang/reflect/Field;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 132
    :goto_0
    iget-object v0, p0, Lxt;->h:[Ljava/lang/Enum;

    array-length v0, v0

    if-ge v3, v0, :cond_5

    .line 133
    iget-object v0, p0, Lxt;->h:[Ljava/lang/Enum;

    aget-object v0, v0, v3

    .line 134
    iget-object v2, p0, Lxt;->c:Ljava/lang/reflect/Member;

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, p1, :cond_2

    move-object v1, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :cond_3
    check-cast v0, Ljava/lang/reflect/Method;

    move v2, v3

    .line 141
    :goto_1
    iget-object v4, p0, Lxt;->h:[Ljava/lang/Enum;

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 142
    iget-object v4, p0, Lxt;->h:[Ljava/lang/Enum;

    aget-object v4, v4, v2

    .line 143
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, p1, :cond_4

    move-object v1, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    return-object v1

    .line 154
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "None enum ordinal or value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 150
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse enum error, class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lxt;->e:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 8

    .line 162
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->D()I

    move-result v6

    .line 163
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->c()B

    move-result v7

    const/16 v0, -0x6e

    if-ne v7, v0, :cond_2

    .line 165
    iget-object v1, p0, Lxt;->e:Ljava/lang/Class;

    const-wide/16 v2, 0x0

    move-object v0, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;JJ)Lwk;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_2

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 168
    invoke-interface/range {v0 .. v5}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 170
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/u$d;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/u$d;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(Lcom/alibaba/fastjson2/u$d;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support enumType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/16 v0, -0x10

    if-lt v7, v0, :cond_3

    const/16 v0, 0x48

    if-gt v7, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    const/16 v0, 0x2f

    if-gt v7, v0, :cond_4

    .line 181
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    goto :goto_2

    .line 183
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result v7

    :goto_2
    if-ltz v7, :cond_5

    .line 186
    iget-object v0, p0, Lxt;->i:[Ljava/lang/Enum;

    array-length v1, v0

    if-ge v7, v1, :cond_5

    .line 189
    aget-object v0, v0, v7

    goto :goto_3

    .line 187
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum ordinal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lxt;->e:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    return-object v0

    .line 194
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->F()J

    move-result-wide v0

    .line 193
    invoke-virtual {p0, v0, v1}, Lxt;->d(J)Ljava/lang/Enum;

    move-result-object v0

    if-nez v0, :cond_8

    .line 197
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->I()J

    move-result-wide v0

    .line 198
    invoke-virtual {p0, v0, v1}, Lxt;->d(J)Ljava/lang/Enum;

    move-result-object v0

    :cond_8
    :goto_3
    if-nez v0, :cond_9

    .line 202
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->D()I

    move-result v1

    if-ne v1, v6, :cond_9

    .line 203
    invoke-direct {p0, p2}, Lxt;->a(Ljava/lang/reflect/Type;)V

    :cond_9
    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 111
    :cond_0
    invoke-static {p1}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lxt;->d(J)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public d(J)Ljava/lang/Enum;
    .locals 2

    .line 94
    iget-object v0, p0, Lxt;->h:[Ljava/lang/Enum;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 98
    :cond_0
    iget-object v0, p0, Lxt;->j:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_1

    return-object v1

    .line 104
    :cond_1
    iget-object p2, p0, Lxt;->h:[Ljava/lang/Enum;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public d_()Ljava/lang/Class;
    .locals 1

    .line 90
    iget-object v0, p0, Lxt;->e:Ljava/lang/Class;

    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6

    .line 220
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->D()I

    move-result p3

    .line 221
    iget-object p4, p0, Lxt;->b:Ljava/lang/reflect/Type;

    const/4 p5, 0x0

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 222
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 224
    :try_start_0
    iget-object p3, p0, Lxt;->a:Ljava/lang/reflect/Method;

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p2, p4, v0

    invoke-virtual {p3, p5, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p3

    goto :goto_0

    :catch_1
    move-exception p3

    .line 226
    :goto_0
    new-instance p4, Lcom/alibaba/fastjson2/c;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create enum error, enumClass "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lxt;->e:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", paramValue "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1, p3}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    .line 231
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->d()Z

    move-result p4

    const-string v1, "parse enum error, class "

    if-eqz p4, :cond_6

    .line 232
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result p4

    .line 233
    iget-object v2, p0, Lxt;->c:Ljava/lang/reflect/Member;

    if-nez v2, :cond_2

    if-ltz p4, :cond_1

    .line 234
    iget-object p5, p0, Lxt;->i:[Ljava/lang/Enum;

    array-length v0, p5

    if-ge p4, v0, :cond_1

    .line 237
    aget-object p4, p5, p4

    move-object p5, p4

    goto/16 :goto_7

    .line 235
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No enum ordinal "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lxt;->e:Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 239
    :cond_2
    iget-object v2, p0, Lxt;->l:[J

    if-eqz v2, :cond_4

    .line 240
    :goto_1
    iget-object v2, p0, Lxt;->l:[J

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 241
    aget-wide v2, v2, v0

    int-to-long v4, p4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 242
    iget-object p5, p0, Lxt;->h:[Ljava/lang/Enum;

    aget-object p5, p5, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-nez p5, :cond_11

    .line 248
    sget-object v0, Lcom/alibaba/fastjson2/u$d;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson2/u$d;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(Lcom/alibaba/fastjson2/u$d;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_7

    .line 249
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lxt;->e:Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lxt;->c:Ljava/lang/reflect/Member;

    invoke-interface {p5}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 252
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->n()Z

    move-result p4

    if-nez p4, :cond_11

    .line 253
    iget-object p4, p0, Lxt;->k:[Ljava/lang/String;

    if-eqz p4, :cond_9

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result p4

    if-eqz p4, :cond_9

    .line 254
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object p4

    .line 255
    :goto_3
    iget-object v2, p0, Lxt;->k:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_8

    .line 256
    aget-object v2, v2, v0

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 257
    iget-object p5, p0, Lxt;->h:[Ljava/lang/Enum;

    aget-object p5, p5, v0

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    if-nez p5, :cond_f

    .line 261
    iget-object v0, p0, Lxt;->c:Ljava/lang/reflect/Member;

    if-eqz v0, :cond_f

    .line 263
    :try_start_1
    iget-object v0, p0, Lxt;->e:Ljava/lang/Class;

    invoke-static {v0, p4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    .line 268
    :cond_9
    iget-object p4, p0, Lxt;->l:[J

    if-eqz p4, :cond_b

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result p4

    if-eqz p4, :cond_b

    .line 269
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result p4

    .line 270
    :goto_5
    iget-object v2, p0, Lxt;->l:[J

    array-length v3, v2

    if-ge v0, v3, :cond_f

    .line 271
    aget-wide v2, v2, v0

    int-to-long v4, p4

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    .line 272
    iget-object p4, p0, Lxt;->h:[Ljava/lang/Enum;

    aget-object p5, p4, v0

    goto :goto_6

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 277
    :cond_b
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->F()J

    move-result-wide v2

    const-wide v4, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    cmp-long p4, v2, v4

    if-nez p4, :cond_c

    return-object p5

    .line 282
    :cond_c
    invoke-virtual {p0, v2, v3}, Lxt;->d(J)Ljava/lang/Enum;

    move-result-object p4

    if-nez p4, :cond_d

    .line 285
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->I()J

    move-result-wide p4

    .line 284
    invoke-virtual {p0, p4, p5}, Lxt;->d(J)Ljava/lang/Enum;

    move-result-object p4

    :cond_d
    if-nez p4, :cond_e

    .line 290
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object p5

    .line 291
    invoke-static {p5}, Labo;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 292
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    if-ltz p5, :cond_e

    .line 293
    iget-object v0, p0, Lxt;->i:[Ljava/lang/Enum;

    array-length v2, v0

    if-ge p5, v2, :cond_e

    .line 294
    aget-object p4, v0, p5

    :cond_e
    move-object p5, p4

    :catch_2
    :cond_f
    :goto_6
    if-nez p5, :cond_11

    .line 300
    sget-object p4, Lcom/alibaba/fastjson2/u$d;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson2/u$d;

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/u;->a(Lcom/alibaba/fastjson2/u$d;)Z

    move-result p4

    if-nez p4, :cond_10

    goto :goto_7

    .line 301
    :cond_10
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object p2

    .line 302
    new-instance p3, Lcom/alibaba/fastjson2/c;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lxt;->e:Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", value "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_11
    :goto_7
    if-nez p5, :cond_12

    .line 306
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->D()I

    move-result p1

    if-ne p1, p3, :cond_12

    .line 307
    invoke-direct {p0, p2}, Lxt;->a(Ljava/lang/reflect/Type;)V

    :cond_12
    return-object p5
.end method
