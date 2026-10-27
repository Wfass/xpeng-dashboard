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
    const-class v0, Lcom/xiaopeng/speech/actorapi/AvatarActor;

    const-string v1, "AvatarActor"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/speech/actor/Actor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-class v0, Lcom/xiaopeng/speech/actorapi/DialogActor;

    const-string v1, "DialogActor"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/speech/actor/Actor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-class v0, Lcom/xiaopeng/speech/actorapi/ResultActor;

    const-string v1, "ResultActor"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/speech/actor/Actor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-class v0, Lcom/xiaopeng/speech/actorapi/TextActor;

    const-string v1, "TextActor"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/speech/actor/Actor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-class v0, Lcom/xiaopeng/speech/actorapi/ShowActor;

    const-string v1, "ShowActor"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/speech/actor/Actor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-class v0, Lcom/xiaopeng/speech/actorapi/SupportActor;

    const-string v1, "SupportActor"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/speech/actor/Actor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-class v0, Lcom/xiaopeng/speech/actorapi/DataActor;

    const-string v1, "DataActor"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/speech/actor/Actor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-class v0, Lcom/xiaopeng/speech/actorapi/ValueActor;

    const-string v1, "ValueActor"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/speech/actor/Actor$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
