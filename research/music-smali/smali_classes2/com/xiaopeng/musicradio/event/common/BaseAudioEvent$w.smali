.class public Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;
.super Ljava/lang/Object;
.source "BaseAudioEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "w"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 194
    iput v0, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->e:I

    .line 197
    iput p2, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->a:I

    .line 198
    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, -0x1

    .line 194
    iput p3, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->e:I

    .line 202
    iput p2, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->a:I

    .line 203
    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, -0x1

    .line 194
    iput p3, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->e:I

    .line 206
    iput p2, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->a:I

    .line 207
    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b:I

    .line 208
    iput p4, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->e:I

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->d:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->d:Z

    return v0
.end method

.method public b()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 236
    iget v0, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 251
    :cond_1
    check-cast p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    .line 252
    iget v2, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->a:I

    iget v3, p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b:I

    iget v3, p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c:I

    iget p1, p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayState{state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
