.class public Lase$a;
.super Ljava/lang/Object;
.source "MusicEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field public final b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0}, Lase$a;-><init>(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lase$a;-><init>(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->clone()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    iput-object p1, p0, Lase$a;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lase$a;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 47
    :goto_0
    iput-boolean p2, p0, Lase$a;->b:Z

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 2

    .line 51
    iget-object v0, p0, Lase$a;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 55
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v0

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
