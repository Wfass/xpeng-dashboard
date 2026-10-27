.class final Lcom/xiaopeng/speech/actor/Actor$2;
.super Ljava/lang/Object;
.source "Actor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


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
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/speech/actor/Actor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/speech/actor/Actor;
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "actorName":Ljava/lang/String;
    sget-object v1, Lcom/xiaopeng/speech/actor/Actor;->sActorMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 72
    .local v1, "actorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaopeng/speech/actor/Actor;>;"
    const/4 v2, 0x2

    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/Parcel;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 73
    .local v3, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/xiaopeng/speech/actor/Actor;>;"
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/actor/Actor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 74
    .end local v3    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/xiaopeng/speech/actor/Actor;>;"
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "createFromParcel error:"

    invoke-static {p0, v3, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    new-instance v3, Lcom/xiaopeng/speech/actor/Actor;

    invoke-direct {v3, v0, p1}, Lcom/xiaopeng/speech/actor/Actor;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/actor/Actor$2;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/speech/actor/Actor;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaopeng/speech/actor/Actor;
    .locals 1
    .param p1, "size"    # I

    .line 82
    new-array v0, p1, [Lcom/xiaopeng/speech/actor/Actor;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/actor/Actor$2;->newArray(I)[Lcom/xiaopeng/speech/actor/Actor;

    move-result-object p1

    return-object p1
.end method
