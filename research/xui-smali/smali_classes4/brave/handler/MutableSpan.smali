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
.field annotations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field error:Ljava/lang/Throwable;

.field finishTimestamp:J

.field kind:Lbrave/Span$Kind;

.field localIp:Ljava/lang/String;

.field localPort:I

.field localServiceName:Ljava/lang/String;

.field name:Ljava/lang/String;

.field remoteIp:Ljava/lang/String;

.field remotePort:I

.field remoteServiceName:Ljava/lang/String;

.field shared:Z

.field startTimestamp:J

.field tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbrave/handler/MutableSpan;->tags:Ljava/util/ArrayList;

    .line 67
    return-void
.end method

.method static updateOrRemove(Ljava/util/ArrayList;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "list"    # Ljava/util/ArrayList;
    .param p1, "i"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    .line 283
    if-nez p3, :cond_0

    .line 284
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 285
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 286
    const/4 v0, 0x1

    return v0

    .line 287
    :cond_0
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public annotate(JLjava/lang/String;)V
    .locals 2
    .param p1, "timestamp"    # J
    .param p3, "value"    # Ljava/lang/String;

    .line 196
    if-eqz p3, :cond_2

    .line 197
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lbrave/handler/MutableSpan;->annotations:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbrave/handler/MutableSpan;->annotations:Ljava/util/ArrayList;

    .line 199
    :cond_1
    iget-object v0, p0, Lbrave/handler/MutableSpan;->annotations:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lbrave/handler/MutableSpan;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    return-void

    .line 196
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public error()Ljava/lang/Throwable;
    .locals 1

    .line 205
    iget-object v0, p0, Lbrave/handler/MutableSpan;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/Throwable;

    .line 210
    iput-object p1, p0, Lbrave/handler/MutableSpan;->error:Ljava/lang/Throwable;

    .line 211
    return-void
.end method

.method public finishTimestamp()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lbrave/handler/MutableSpan;->finishTimestamp:J

    return-wide v0
.end method

.method public finishTimestamp(J)V
    .locals 0
    .param p1, "finishTimestamp"    # J

    .line 97
    iput-wide p1, p0, Lbrave/handler/MutableSpan;->finishTimestamp:J

    .line 98
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
    .local p1, "annotationConsumer":Lbrave/handler/MutableSpan$AnnotationConsumer;, "Lbrave/handler/MutableSpan$AnnotationConsumer<TT;>;"
    .local p2, "target":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lbrave/handler/MutableSpan;->annotations:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lbrave/handler/MutableSpan;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 263
    iget-object v2, p0, Lbrave/handler/MutableSpan;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 264
    .local v2, "timestamp":J
    iget-object v4, p0, Lbrave/handler/MutableSpan;->annotations:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, p2, v2, v3, v4}, Lbrave/handler/MutableSpan$AnnotationConsumer;->accept(Ljava/lang/Object;JLjava/lang/String;)V

    .line 262
    .end local v2    # "timestamp":J
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 266
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_1
    return-void
.end method

.method public forEachAnnotation(Lbrave/handler/MutableSpan$AnnotationUpdater;)V
    .locals 5
    .param p1, "annotationUpdater"    # Lbrave/handler/MutableSpan$AnnotationUpdater;

    .line 270
    iget-object v0, p0, Lbrave/handler/MutableSpan;->annotations:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lbrave/handler/MutableSpan;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 272
    iget-object v2, p0, Lbrave/handler/MutableSpan;->annotations:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lbrave/handler/MutableSpan;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {p1, v3, v4, v2}, Lbrave/handler/MutableSpan$AnnotationUpdater;->update(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "newValue":Ljava/lang/String;
    iget-object v4, p0, Lbrave/handler/MutableSpan;->annotations:Ljava/util/ArrayList;

    invoke-static {v4, v0, v2, v3}, Lbrave/handler/MutableSpan;->updateOrRemove(Ljava/util/ArrayList;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 275
    add-int/lit8 v1, v1, -0x2

    .line 276
    add-int/lit8 v0, v0, -0x2

    .line 271
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "newValue":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 279
    .end local v0    # "i":I
    .end local v1    # "length":I
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
    .local p1, "tagConsumer":Lbrave/handler/MutableSpan$TagConsumer;, "Lbrave/handler/MutableSpan$TagConsumer<TT;>;"
    .local p2, "target":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lbrave/handler/MutableSpan;->tags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 241
    iget-object v2, p0, Lbrave/handler/MutableSpan;->tags:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lbrave/handler/MutableSpan;->tags:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, p2, v2, v3}, Lbrave/handler/MutableSpan$TagConsumer;->accept(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 243
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_0
    return-void
.end method

.method public forEachTag(Lbrave/handler/MutableSpan$TagUpdater;)V
    .locals 5
    .param p1, "tagUpdater"    # Lbrave/handler/MutableSpan$TagUpdater;

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lbrave/handler/MutableSpan;->tags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 248
    iget-object v2, p0, Lbrave/handler/MutableSpan;->tags:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 249
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lbrave/handler/MutableSpan;->tags:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lbrave/handler/MutableSpan$TagUpdater;->update(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "newValue":Ljava/lang/String;
    iget-object v4, p0, Lbrave/handler/MutableSpan;->tags:Ljava/util/ArrayList;

    invoke-static {v4, v0, v2, v3}, Lbrave/handler/MutableSpan;->updateOrRemove(Ljava/util/ArrayList;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 251
    add-int/lit8 v1, v1, -0x2

    .line 252
    add-int/lit8 v0, v0, -0x2

    .line 247
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "newValue":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 255
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_1
    return-void
.end method

.method public kind()Lbrave/Span$Kind;
    .locals 1

    .line 102
    iget-object v0, p0, Lbrave/handler/MutableSpan;->kind:Lbrave/Span$Kind;

    return-object v0
.end method

.method public kind(Lbrave/Span$Kind;)V
    .locals 2
    .param p1, "kind"    # Lbrave/Span$Kind;

    .line 107
    if-eqz p1, :cond_0

    .line 108
    iput-object p1, p0, Lbrave/handler/MutableSpan;->kind:Lbrave/Span$Kind;

    .line 109
    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "kind == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public localIp()Ljava/lang/String;
    .locals 1
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 129
    iget-object v0, p0, Lbrave/handler/MutableSpan;->localIp:Ljava/lang/String;

    return-object v0
.end method

.method public localIp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "localIp"    # Ljava/lang/String;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    .line 134
    invoke-static {p1}, Lbrave/internal/IpLiteral;->ipOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbrave/handler/MutableSpan;->localIp:Ljava/lang/String;

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public localPort()I
    .locals 1

    .line 140
    iget v0, p0, Lbrave/handler/MutableSpan;->localPort:I

    return v0
.end method

.method public localPort(I)V
    .locals 3
    .param p1, "localPort"    # I

    .line 145
    const v0, 0xffff

    if-gt p1, v0, :cond_1

    .line 146
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 147
    :cond_0
    iput p1, p0, Lbrave/handler/MutableSpan;->localPort:I

    .line 148
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

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public localServiceName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 116
    iget-object v0, p0, Lbrave/handler/MutableSpan;->localServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public localServiceName(Ljava/lang/String;)V
    .locals 2
    .param p1, "localServiceName"    # Ljava/lang/String;

    .line 121
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbrave/handler/MutableSpan;->localServiceName:Ljava/lang/String;

    .line 125
    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "localServiceName is empty"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 71
    iget-object v0, p0, Lbrave/handler/MutableSpan;->name:Ljava/lang/String;

    return-object v0
.end method

.method public name(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 76
    if-eqz p1, :cond_0

    .line 77
    iput-object p1, p0, Lbrave/handler/MutableSpan;->name:Ljava/lang/String;

    .line 78
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remoteIp()Ljava/lang/String;
    .locals 1
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 170
    iget-object v0, p0, Lbrave/handler/MutableSpan;->remoteIp:Ljava/lang/String;

    return-object v0
.end method

.method public remoteIpAndPort(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "remoteIp"    # Ljava/lang/String;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param
    .param p2, "remotePort"    # I

    .line 185
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 186
    :cond_0
    invoke-static {p1}, Lbrave/internal/IpLiteral;->ipOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbrave/handler/MutableSpan;->remoteIp:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lbrave/handler/MutableSpan;->remoteIp:Ljava/lang/String;

    if-nez v1, :cond_1

    return v0

    .line 188
    :cond_1
    const v0, 0xffff

    if-gt p2, v0, :cond_3

    .line 189
    if-gez p2, :cond_2

    const/4 p2, 0x0

    .line 190
    :cond_2
    iput p2, p0, Lbrave/handler/MutableSpan;->remotePort:I

    .line 191
    const/4 v0, 0x1

    return v0

    .line 188
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remotePort()I
    .locals 1

    .line 180
    iget v0, p0, Lbrave/handler/MutableSpan;->remotePort:I

    return v0
.end method

.method public remoteServiceName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 152
    iget-object v0, p0, Lbrave/handler/MutableSpan;->remoteServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public remoteServiceName(Ljava/lang/String;)V
    .locals 2
    .param p1, "remoteServiceName"    # Ljava/lang/String;

    .line 157
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbrave/handler/MutableSpan;->remoteServiceName:Ljava/lang/String;

    .line 161
    return-void

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "remoteServiceName is empty"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShared()V
    .locals 1

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbrave/handler/MutableSpan;->shared:Z

    .line 307
    return-void
.end method

.method public shared()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Lbrave/handler/MutableSpan;->shared:Z

    return v0
.end method

.method public startTimestamp()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lbrave/handler/MutableSpan;->startTimestamp:J

    return-wide v0
.end method

.method public startTimestamp(J)V
    .locals 0
    .param p1, "startTimestamp"    # J

    .line 87
    iput-wide p1, p0, Lbrave/handler/MutableSpan;->startTimestamp:J

    .line 88
    return-void
.end method

.method public tag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 215
    if-eqz p1, :cond_3

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lbrave/handler/MutableSpan;->tags:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 219
    iget-object v3, p0, Lbrave/handler/MutableSpan;->tags:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lbrave/handler/MutableSpan;->tags:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    .line 218
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 221
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    return-object v0

    .line 216
    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 226
    if-eqz p1, :cond_4

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 228
    if-eqz p2, :cond_2

    .line 229
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lbrave/handler/MutableSpan;->tags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 230
    iget-object v2, p0, Lbrave/handler/MutableSpan;->tags:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, Lbrave/handler/MutableSpan;->tags:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void

    .line 229
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 235
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_1
    iget-object v0, p0, Lbrave/handler/MutableSpan;->tags:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lbrave/handler/MutableSpan;->tags:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    return-void

    .line 228
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " == null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
