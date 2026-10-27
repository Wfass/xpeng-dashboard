.class final Lcom/xiaopeng/speech/actor/Actor$1;
.super Ljava/util/HashMap;
.source "Actor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/actor/Actor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Class<",
        "+",
        "Lcom/xiaopeng/speech/actor/Actor;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 29
    const-string v0, "AvatarActor"

    const-class v1, Lcom/xiaopeng/speech/actorapi/AvatarActor;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/actor/Actor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v0, "DialogActor"

    const-class v1, Lcom/xiaopeng/speech/actorapi/DialogActor;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/actor/Actor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v0, "ResultActor"

    const-class v1, Lcom/xiaopeng/speech/actorapi/ResultActor;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/actor/Actor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "TextActor"

    const-class v1, Lcom/xiaopeng/speech/actorapi/TextActor;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/actor/Actor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v0, "ShowActor"

    const-class v1, Lcom/xiaopeng/speech/actorapi/ShowActor;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/actor/Actor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "SupportActor"

    const-class v1, Lcom/xiaopeng/speech/actorapi/SupportActor;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/actor/Actor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "DataActor"

    const-class v1, Lcom/xiaopeng/speech/actorapi/DataActor;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/actor/Actor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v0, "ValueActor"

    const-class v1, Lcom/xiaopeng/speech/actorapi/ValueActor;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/actor/Actor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method
