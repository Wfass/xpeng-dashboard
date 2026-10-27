.class public Lbdy;
.super Lbdl;
.source "ReissueModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbdy$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lbdl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbdy$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lbdy;-><init>()V

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 49
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getMergeList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    .line 53
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static c()Lbdy;
    .locals 1

    .line 22
    sget-object v0, Lbdy$a;->a:Lbdy;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;Lbdl$a;ILjava/lang/String;)V
    .locals 0

    .line 36
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getReissueType()I

    move-result p2

    const/4 p3, 0x1

    if-ne p3, p2, :cond_0

    .line 37
    invoke-static {}, Lare;->d()Lare;

    move-result-object p2

    invoke-direct {p0, p1}, Lbdy;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lare;->c(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 38
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getReissueType()I

    move-result p3

    if-ne p2, p3, :cond_1

    .line 39
    invoke-static {}, Lare;->d()Lare;

    move-result-object p2

    invoke-direct {p0, p1}, Lbdy;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lare;->e(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    .line 40
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getReissueType()I

    move-result p3

    if-ne p2, p3, :cond_2

    .line 41
    invoke-static {}, Lare;->d()Lare;

    move-result-object p2

    invoke-direct {p0, p1}, Lbdy;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lare;->d(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x4

    .line 42
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getReissueType()I

    move-result p3

    if-ne p2, p3, :cond_3

    .line 43
    invoke-static {}, Lare;->d()Lare;

    move-result-object p2

    invoke-direct {p0, p1}, Lbdy;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lare;->f(Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 31
    invoke-static {}, Lare;->d()Lare;

    move-result-object v0

    invoke-virtual {v0}, Lare;->b()V

    return-void
.end method
