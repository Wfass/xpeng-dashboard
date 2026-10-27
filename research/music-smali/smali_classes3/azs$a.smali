.class Lazs$a;
.super Ljava/lang/Object;
.source "LatelyMusicOperationBase.java"

# interfaces
.implements Lban$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lazs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lban$a<",
        "Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lazs$1;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lazs$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 199
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 194
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lazs$a;->a(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
