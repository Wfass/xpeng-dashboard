.class public Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;
.super Lbut;
.source "DialogNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/dialog/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lbut;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 38
    invoke-static {p2}, Lbwo;->a(Ljava/lang/String;)Lbwo;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 40
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 41
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/dialog/b;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/b;->a(Lbwo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 48
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 49
    invoke-static {p2}, Lbwk;->a(Ljava/lang/String;)Lbwk;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 51
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 52
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/dialog/b;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/b;->a(Lbwk;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 60
    invoke-static {p2}, Lbwn;->a(Ljava/lang/String;)Lbwn;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 62
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 63
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/dialog/b;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/b;->a(Lbwn;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 72
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 73
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/dialog/b;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/dialog/b;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 81
    invoke-static {p2}, Lbwm;->a(Ljava/lang/String;)Lbwm;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 83
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 84
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/dialog/b;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/b;->a(Lbwm;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 92
    invoke-static {p2}, Lbwl;->a(Ljava/lang/String;)Lbwl;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 94
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 95
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/dialog/b;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/b;->a(Lbwl;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 103
    new-instance v0, Lcom/xiaopeng/speech/jarvisproto/d;

    invoke-direct {v0}, Lcom/xiaopeng/speech/jarvisproto/d;-><init>()V

    .line 104
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/d;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/d;

    move-result-object v0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 108
    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_1

    .line 109
    aget-object v1, p1, p2

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/dialog/b;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/node/dialog/b;->a(Lcom/xiaopeng/speech/jarvisproto/d;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 118
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 119
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/dialog/b;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/dialog/b;->b()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 128
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 129
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/dialog/b;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/dialog/b;->c()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 138
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 139
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/dialog/b;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/dialog/b;->d()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 148
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 149
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/dialog/b;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/dialog/b;->e()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 158
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 159
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/dialog/b;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/b;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 166
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 167
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/f;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/f;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 169
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 170
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/dialog/b;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/b;->a(Lcom/xiaopeng/speech/jarvisproto/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 177
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 178
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 180
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 181
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/dialog/b;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/b;->a(Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 188
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    .line 189
    invoke-static {p2}, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;->a(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 191
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 192
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/dialog/b;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/dialog/b;->a(Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
