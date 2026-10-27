.class public Lry;
.super Ljava/lang/Object;
.source "ClassWriter.java"


# instance fields
.field private final a:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private final c:Lsg;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:[I

.field private i:Lsa;

.field private j:Lsa;

.field private k:Lse;

.field private l:Lse;


# direct methods
.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lsg;

    invoke-direct {v0, p0}, Lsg;-><init>(Lry;)V

    iput-object v0, p0, Lry;->c:Lsg;

    .line 90
    iput-object p1, p0, Lry;->a:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4

    .line 228
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7bc1d02

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0xbbd0c37

    if-eq v0, v1, :cond_1

    const v1, 0x7c015a33

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "java/lang/Object"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_1
    const-string v0, "java/util/ArrayList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v0, "java/util/List"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_6

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    .line 239
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 242
    iget-object v1, p0, Lry;->a:Ljava/util/function/Function;

    if-eqz v1, :cond_4

    .line 243
    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    :cond_4
    if-nez v0, :cond_5

    .line 247
    invoke-static {p1}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_5
    return-object v0

    .line 234
    :cond_6
    const-class p1, Ljava/lang/Object;

    return-object p1

    .line 232
    :cond_7
    const-class p1, Ljava/util/ArrayList;

    return-object p1

    .line 230
    :cond_8
    const-class p1, Ljava/util/List;

    return-object p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 266
    invoke-virtual {p0, p1}, Lry;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 272
    invoke-virtual {p0, p2}, Lry;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "java/lang/Object"

    if-nez v1, :cond_0

    return-object v2

    .line 278
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object p1

    .line 281
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p2

    .line 284
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 288
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 291
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2e

    const/16 v0, 0x2f

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object v2

    .line 269
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "class not found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)Lsa;
    .locals 2

    .line 116
    new-instance v0, Lsa;

    iget-object v1, p0, Lry;->c:Lsg;

    invoke-direct {v0, v1, p1, p2, p3}, Lsa;-><init>(Lsg;ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lry;->i:Lsa;

    if-nez p1, :cond_0

    .line 119
    iput-object v0, p0, Lry;->i:Lsa;

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lry;->j:Lsa;

    iput-object v0, p1, Lsa;->a:Lsa;

    .line 123
    :goto_0
    iput-object v0, p0, Lry;->j:Lsa;

    return-object v0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;I)Lse;
    .locals 7

    .line 132
    new-instance v6, Lse;

    iget-object v1, p0, Lry;->c:Lsg;

    move-object v0, v6

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lse;-><init>(Lsg;ILjava/lang/String;Ljava/lang/String;I)V

    .line 134
    iget-object p1, p0, Lry;->k:Lse;

    if-nez p1, :cond_0

    .line 135
    iput-object v6, p0, Lry;->k:Lse;

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lry;->l:Lse;

    iput-object v6, p1, Lse;->a:Lse;

    .line 139
    :goto_0
    iput-object v6, p0, Lry;->l:Lse;

    return-object v6
.end method

.method public final a(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 99
    iput p1, p0, Lry;->b:I

    .line 100
    iput p2, p0, Lry;->d:I

    .line 101
    iget-object p2, p0, Lry;->c:Lsg;

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-virtual {p2, p1, p3}, Lsg;->a(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lry;->e:I

    const/4 p1, 0x0

    const/4 p2, 0x7

    if-nez p4, :cond_0

    move p3, p1

    goto :goto_0

    .line 102
    :cond_0
    iget-object p3, p0, Lry;->c:Lsg;

    invoke-virtual {p3, p2, p4}, Lsg;->b(ILjava/lang/String;)Lsf;

    move-result-object p3

    iget p3, p3, Lsf;->a:I

    :goto_0
    iput p3, p0, Lry;->f:I

    if-eqz p5, :cond_1

    .line 103
    array-length p3, p5

    if-lez p3, :cond_1

    .line 104
    array-length p3, p5

    iput p3, p0, Lry;->g:I

    .line 105
    iget p3, p0, Lry;->g:I

    new-array p3, p3, [I

    iput-object p3, p0, Lry;->h:[I

    .line 106
    :goto_1
    iget p3, p0, Lry;->g:I

    if-ge p1, p3, :cond_1

    .line 107
    iget-object p3, p0, Lry;->h:[I

    iget-object p4, p0, Lry;->c:Lsg;

    aget-object v0, p5, p1

    invoke-virtual {p4, p2, v0}, Lsg;->b(ILjava/lang/String;)Lsf;

    move-result-object p4

    iget p4, p4, Lsf;->a:I

    aput p4, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a()[B
    .locals 7

    .line 152
    iget v0, p0, Lry;->g:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x18

    .line 154
    iget-object v1, p0, Lry;->i:Lsa;

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x8

    .line 158
    iget-object v1, v1, Lsa;->a:Lsa;

    goto :goto_0

    .line 161
    :cond_0
    iget-object v1, p0, Lry;->k:Lse;

    move v4, v2

    :goto_1
    if-eqz v1, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 164
    invoke-virtual {v1}, Lse;->b()I

    move-result v5

    add-int/2addr v3, v5

    .line 165
    iget-object v1, v1, Lse;->a:Lse;

    goto :goto_1

    .line 177
    :cond_1
    iget-object v1, p0, Lry;->c:Lsg;

    iget-object v1, v1, Lsg;->d:Lrw;

    iget v1, v1, Lrw;->b:I

    add-int/2addr v3, v1

    .line 178
    iget-object v1, p0, Lry;->c:Lsg;

    iget v1, v1, Lsg;->c:I

    const v5, 0xffff

    if-gt v1, v5, :cond_6

    .line 185
    new-instance v5, Lrw;

    invoke-direct {v5, v3}, Lrw;-><init>(I)V

    const v3, -0x35014542    # -8346975.0f

    .line 186
    invoke-virtual {v5, v3}, Lrw;->c(I)Lrw;

    move-result-object v3

    iget v6, p0, Lry;->b:I

    invoke-virtual {v3, v6}, Lrw;->c(I)Lrw;

    .line 187
    invoke-virtual {v5, v1}, Lrw;->b(I)Lrw;

    move-result-object v1

    iget-object v3, p0, Lry;->c:Lsg;

    iget-object v3, v3, Lsg;->d:Lrw;

    iget-object v3, v3, Lrw;->a:[B

    iget-object v6, p0, Lry;->c:Lsg;

    iget-object v6, v6, Lsg;->d:Lrw;

    iget v6, v6, Lrw;->b:I

    .line 188
    invoke-virtual {v1, v3, v2, v6}, Lrw;->a([BII)V

    .line 194
    iget v1, p0, Lry;->d:I

    and-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v1}, Lrw;->b(I)Lrw;

    move-result-object v1

    iget v3, p0, Lry;->e:I

    invoke-virtual {v1, v3}, Lrw;->b(I)Lrw;

    move-result-object v1

    iget v3, p0, Lry;->f:I

    invoke-virtual {v1, v3}, Lrw;->b(I)Lrw;

    .line 195
    iget v1, p0, Lry;->g:I

    invoke-virtual {v5, v1}, Lrw;->b(I)Lrw;

    move v1, v2

    .line 196
    :goto_2
    iget v3, p0, Lry;->g:I

    if-ge v1, v3, :cond_2

    .line 197
    iget-object v3, p0, Lry;->h:[I

    aget v3, v3, v1

    invoke-virtual {v5, v3}, Lrw;->b(I)Lrw;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 199
    :cond_2
    invoke-virtual {v5, v0}, Lrw;->b(I)Lrw;

    .line 200
    iget-object v0, p0, Lry;->i:Lsa;

    :goto_3
    if-eqz v0, :cond_3

    .line 202
    invoke-virtual {v0, v5}, Lsa;->a(Lrw;)V

    .line 203
    iget-object v0, v0, Lsa;->a:Lsa;

    goto :goto_3

    .line 205
    :cond_3
    invoke-virtual {v5, v4}, Lrw;->b(I)Lrw;

    .line 208
    iget-object v0, p0, Lry;->k:Lse;

    move v1, v2

    :goto_4
    if-eqz v0, :cond_4

    .line 210
    iget v3, v0, Lse;->b:I

    .line 211
    iget-boolean v3, v0, Lse;->c:Z

    or-int/2addr v1, v3

    .line 212
    invoke-virtual {v0, v5}, Lse;->a(Lrw;)V

    .line 213
    iget-object v0, v0, Lse;->a:Lse;

    goto :goto_4

    .line 216
    :cond_4
    invoke-virtual {v5, v2}, Lrw;->b(I)Lrw;

    if-nez v1, :cond_5

    .line 223
    iget-object v0, v5, Lrw;->a:[B

    return-object v0

    .line 221
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 180
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lry;->c:Lsg;

    iget-object v3, v3, Lsg;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", constantPoolCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method
