.class public Lcom/xiaopeng/musicradio/model/bluetooth/b;
.super Ljava/lang/Object;
.source "BtOperationBean.java"


# static fields
.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/xiaopeng/musicradio/model/bluetooth/b$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/b$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/model/bluetooth/b;->d:Ljava/util/HashMap;

    .line 19
    new-instance v0, Lcom/xiaopeng/musicradio/model/bluetooth/b$2;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/b$2;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/model/bluetooth/b;->f:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/b;->e:I

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/b;->a:Ljava/lang/String;

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/b;->b:J

    .line 32
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/b;->c:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/b;->b:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/b;->e:I

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/b;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/b;->e:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 61
    instance-of v0, p1, Lcom/xiaopeng/musicradio/model/bluetooth/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 62
    check-cast p1, Lcom/xiaopeng/musicradio/model/bluetooth/b;

    .line 63
    iget-object v0, p1, Lcom/xiaopeng/musicradio/model/bluetooth/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/bluetooth/b;->a:Ljava/lang/String;

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/xiaopeng/musicradio/model/bluetooth/b;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/xiaopeng/musicradio/model/bluetooth/b;->f:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/bluetooth/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 66
    iget-wide v2, p1, Lcom/xiaopeng/musicradio/model/bluetooth/b;->b:J

    iget-wide v4, p0, Lcom/xiaopeng/musicradio/model/bluetooth/b;->b:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    .line 85
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/b;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/b;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "BtOperationBean[code:%s, ts:%d, retry:%d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
