.class public final Lbrave/handler/MutableSpan;
.super Ljava/lang/Object;
.source "MutableSpan.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/handler/MutableSpan$AnnotationUpdater;,
        Lbrave/handler/MutableSpan$TagUpdater;,
        Lbrave/handler/MutableSpan$AnnotationConsumer;,
        Lbrave/handler/MutableSpan$TagConsumer;
    }
.end annotation


# instance fields
.field a:Lbrave/Span$Kind;

.field b:Z

.field c:J

.field d:J

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:I

.field k:I

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbrave/handler/MutableSpan;->l:Ljava/util/ArrayList;

    return-void
.end method

.method static a(Ljava/util/ArrayList;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 284
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 285
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v0

    .line 287
    :cond_0
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    add-int/2addr p1, v0

    .line 288
    invoke-virtual {p0, p1, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public annotate(JLjava/lang/String;)V
    .locals 2

    if-eqz p3, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lbrave/handler/MutableSpan;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbrave/handler/MutableSpan;->m:Ljava/util/ArrayList;

    .line 199
    :cond_1
    iget-object v0, p0, Lbrave/handler/MutableSpan;->m:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object p1, p0, Lbrave/handler/MutableSpan;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 196
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public error()Ljava/lang/Throwable;
    .locals 1

    .line 205
    iget-object v0, p0, Lbrave/handler/MutableSpan;->n:Ljava/lang/Throwable;

    return-object v0
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lbrave/handler/MutableSpan;->n:Ljava/lang/Throwable;

    return-void
.end method

.method public finishTimestamp()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lbrave/handler/MutableSpan;->d:J

    return-wide v0
.end method

.method public finishTimestamp(J)V
    .locals 0

    .line 97
    iput-wide p1, p0, Lbrave/handler/MutableSpan;->d:J

    return-void
.end method

.method public forEachAnnotation(Lbrave/handler/MutableSpan$AnnotationConsumer;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbrave/handler/MutableSpan$AnnotationConsumer<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lbrave/handler/MutableSpan;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 262
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 263
    iget-object v2, p0, Lbrave/handler/MutableSpan;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 264
    iget-object v4, p0, Lbrave/handler/MutableSpan;->m:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, p2, v2, v3, v4}, Lbrave/handler/MutableSpan$AnnotationConsumer;->accept(Ljava/lang/Object;JLjava/lang/String;)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public forEachAnnotation(Lbrave/handler/MutableSpan$AnnotationUpdater;)V
    .locals 5

    .line 270
    iget-object v0, p0, Lbrave/handler/MutableSpan;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 271
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 272
    iget-object v2, p0, Lbrave/handler/MutableSpan;->m:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    iget-object v3, p0, Lbrave/handler/MutableSpan;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {p1, v3, v4, v2}, Lbrave/handler/MutableSpan$AnnotationUpdater;->update(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    iget-object v4, p0, Lbrave/handler/MutableSpan;->m:Ljava/util/ArrayList;

    invoke-static {v4, v1, v2, v3}, Lbrave/handler/MutableSpan;->a(Ljava/util/ArrayList;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x2

    add-int/lit8 v1, v1, -0x2

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public forEachTag(Lbrave/handler/MutableSpan$TagConsumer;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbrave/handler/MutableSpan$TagConsumer<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lbrave/handler/MutableSpan;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 241
    iget-object v2, p0, Lbrave/handler/MutableSpan;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lbrave/handler/MutableSpan;->l:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, p2, v2, v3}, Lbrave/handler/MutableSpan$TagConsumer;->accept(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forEachTag(Lbrave/handler/MutableSpan$TagUpdater;)V
    .locals 5

    .line 247
    iget-object v0, p0, Lbrave/handler/MutableSpan;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 248
    iget-object v2, p0, Lbrave/handler/MutableSpan;->l:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 249
    iget-object v3, p0, Lbrave/handler/MutableSpan;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lbrave/handler/MutableSpan$TagUpdater;->update(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 250
    iget-object v4, p0, Lbrave/handler/MutableSpan;->l:Ljava/util/ArrayList;

    invoke-static {v4, v1, v2, v3}, Lbrave/handler/MutableSpan;->a(Ljava/util/ArrayList;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x2

    add-int/lit8 v1, v1, -0x2

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public kind()Lbrave/Span$Kind;
    .locals 1

    .line 102
    iget-object v0, p0, Lbrave/handler/MutableSpan;->a:Lbrave/Span$Kind;

    return-object v0
.end method

.method public kind(Lbrave/Span$Kind;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 108
    iput-object p1, p0, Lbrave/handler/MutableSpan;->a:Lbrave/Span$Kind;

    return-void

    .line 107
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "kind == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public localIp()Ljava/lang/String;
    .locals 1
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 129
    iget-object v0, p0, Lbrave/handler/MutableSpan;->g:Ljava/lang/String;

    return-object v0
.end method

.method public localIp(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    .line 134
    invoke-static {p1}, Lbrave/internal/IpLiteral;->ipOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbrave/handler/MutableSpan;->g:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public localPort()I
    .locals 1

    .line 140
    iget v0, p0, Lbrave/handler/MutableSpan;->j:I

    return v0
.end method

.method public localPort(I)V
    .locals 3

    const v0, 0xffff

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 147
    :cond_0
    iput p1, p0, Lbrave/handler/MutableSpan;->j:I

    return-void

    .line 145
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public localServiceName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 116
    iget-object v0, p0, Lbrave/handler/MutableSpan;->f:Ljava/lang/String;

    return-object v0
.end method

.method public localServiceName(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbrave/handler/MutableSpan;->f:Ljava/lang/String;

    return-void

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "localServiceName is empty"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 71
    iget-object v0, p0, Lbrave/handler/MutableSpan;->e:Ljava/lang/String;

    return-object v0
.end method

.method public name(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 77
    iput-object p1, p0, Lbrave/handler/MutableSpan;->e:Ljava/lang/String;

    return-void

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remoteIp()Ljava/lang/String;
    .locals 1
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 170
    iget-object v0, p0, Lbrave/handler/MutableSpan;->i:Ljava/lang/String;

    return-object v0
.end method

.method public remoteIpAndPort(Ljava/lang/String;I)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 186
    :cond_0
    invoke-static {p1}, Lbrave/internal/IpLiteral;->ipOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbrave/handler/MutableSpan;->i:Ljava/lang/String;

    .line 187
    iget-object p1, p0, Lbrave/handler/MutableSpan;->i:Ljava/lang/String;

    if-nez p1, :cond_1

    return v0

    :cond_1
    const p1, 0xffff

    if-gt p2, p1, :cond_3

    if-gez p2, :cond_2

    move p2, v0

    .line 190
    :cond_2
    iput p2, p0, Lbrave/handler/MutableSpan;->k:I

    const/4 p1, 0x1

    return p1

    .line 188
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remotePort()I
    .locals 1

    .line 180
    iget v0, p0, Lbrave/handler/MutableSpan;->k:I

    return v0
.end method

.method public remoteServiceName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 152
    iget-object v0, p0, Lbrave/handler/MutableSpan;->h:Ljava/lang/String;

    return-object v0
.end method

.method public remoteServiceName(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbrave/handler/MutableSpan;->h:Ljava/lang/String;

    return-void

    .line 158
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "remoteServiceName is empty"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShared()V
    .locals 1

    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lbrave/handler/MutableSpan;->b:Z

    return-void
.end method

.method public shared()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Lbrave/handler/MutableSpan;->b:Z

    return v0
.end method

.method public startTimestamp()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lbrave/handler/MutableSpan;->c:J

    return-wide v0
.end method

.method public startTimestamp(J)V
    .locals 0

    .line 87
    iput-wide p1, p0, Lbrave/handler/MutableSpan;->c:J

    return-void
.end method

.method public tag(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    if-eqz p1, :cond_3

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 218
    iget-object v2, p0, Lbrave/handler/MutableSpan;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 219
    iget-object v3, p0, Lbrave/handler/MutableSpan;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lbrave/handler/MutableSpan;->l:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0

    .line 216
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 215
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 229
    iget-object v1, p0, Lbrave/handler/MutableSpan;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 230
    iget-object v2, p0, Lbrave/handler/MutableSpan;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    iget-object p1, p0, Lbrave/handler/MutableSpan;->l:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lbrave/handler/MutableSpan;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object p1, p0, Lbrave/handler/MutableSpan;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 228
    :cond_2
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " == null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 227
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
