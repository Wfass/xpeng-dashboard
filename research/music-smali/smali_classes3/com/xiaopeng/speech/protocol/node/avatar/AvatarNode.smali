.class public Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;
.super Lbut;
.source "AvatarNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/avatar/a;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 30
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 31
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/c;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/c;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 33
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 34
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/avatar/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/a;->a(Lcom/xiaopeng/speech/jarvisproto/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 41
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/b;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/b;

    move-result-object p1

    .line 42
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 44
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 45
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/avatar/a;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/avatar/a;->a(Lcom/xiaopeng/speech/jarvisproto/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 54
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 55
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/avatar/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/avatar/a;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 74
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 75
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/avatar/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/avatar/a;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 84
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 85
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/avatar/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/avatar/a;->c()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 93
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 94
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/avatar/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/avatar/a;->d()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 103
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 104
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/avatar/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/a;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 114
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 115
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/avatar/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/a;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 124
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 125
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/avatar/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/a;->c(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 132
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 134
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 135
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/avatar/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/a;->d(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 142
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 144
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 145
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/avatar/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/a;->e(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 154
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 155
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/avatar/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/a;->f(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 164
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 165
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/avatar/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/a;->g(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 175
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 176
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/avatar/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/a;->h(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 183
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 185
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 186
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/avatar/a;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/a;->i(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 193
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/avatar/AvatarNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 194
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 196
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 197
    check-cast v2, Lcom/xiaopeng/speech/protocol/node/avatar/a;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/avatar/a;->a(Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
