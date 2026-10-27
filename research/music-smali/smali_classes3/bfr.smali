.class public Lbfr;
.super Ljava/lang/Object;
.source "MainDataOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbfr$a;,
        Lbfr$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Integer;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lbfr$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lbfr;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lbfr;->b:Ljava/lang/Integer;

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lbfr;->c:Landroid/util/SparseArray;

    .line 47
    iget-object v0, p0, Lbfr;->a:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "qq_cond_ata"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lbfr;->a:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "kugou_cond_ata"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lbfr;->a:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "netease_cond_ata"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lbfr$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lbfr;-><init>()V

    return-void
.end method

.method public static a()Lbfr;
    .locals 1

    .line 43
    sget-object v0, Lbfr$b;->a:Lbfr;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/music/ConResult;
    .locals 2

    .line 124
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/z;->a(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readFromFile: content = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MainDataOperation"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-class p1, Lcom/xiaopeng/musicradio/bean/music/ConResult;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/ConResult;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-static {p1, p2, p3, v0}, Lcom/xiaopeng/musicradio/utils/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lbfr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/xiaopeng/musicradio/bean/music/ConResult;
    .locals 1

    .line 53
    iget-object v0, p0, Lbfr;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbfr$a;

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Lbfr$a;->a()Lcom/xiaopeng/musicradio/bean/music/ConResult;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILcom/xiaopeng/musicradio/bean/music/ConResult;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lbfr;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfr$a;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lbfr$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbfr$a;-><init>(Lbfr$1;)V

    .line 64
    iget-object v1, p0, Lbfr;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    :cond_0
    invoke-virtual {v0, p2}, Lbfr$a;->a(Lcom/xiaopeng/musicradio/bean/music/ConResult;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lbfr;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-direct {p0, p1}, Lbfr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/z;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/z;->b(Ljava/lang/String;)Ljava/io/File;

    .line 120
    :cond_1
    invoke-direct {p0}, Lbfr;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lbfr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()I
    .locals 3

    .line 70
    iget-object v0, p0, Lbfr;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    const-string v1, "SELECT_MENU_INDEX"

    .line 74
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v1

    .line 75
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v2

    invoke-virtual {v2}, Lbdt;->e()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v2

    invoke-virtual {v2}, Lbdt;->d()I

    move-result v2

    if-ne v1, v2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 79
    :cond_2
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v2

    invoke-virtual {v2}, Lbdt;->c()I

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v0, 0x2

    .line 82
    :cond_3
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lbfr;->b:Ljava/lang/Integer;

    return v0
.end method

.method public b(I)Lcom/xiaopeng/musicradio/bean/music/ConResult;
    .locals 2

    .line 100
    iget-object v0, p0, Lbfr;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Lbfr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/z;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-direct {p0, p1}, Lbfr;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/music/ConResult;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public c(I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-virtual {p0, p1}, Lbfr;->a(I)Lcom/xiaopeng/musicradio/bean/music/ConResult;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 150
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getRadioResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getRadioResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getRadioResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getRadioResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getRadioResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;

    move-result-object v1

    const/4 v2, 0x0

    .line 154
    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getRadioResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 155
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;

    .line 156
    new-instance v4, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;-><init>()V

    const-string v5, "listsign_tags"

    .line 157
    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioPic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 162
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    goto :goto_1

    .line 164
    :cond_0
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    .line 166
    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public c()V
    .locals 3

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lbfr;->b()I

    move-result v0

    .line 89
    invoke-virtual {p0, v0}, Lbfr;->b(I)Lcom/xiaopeng/musicradio/bean/music/ConResult;

    move-result-object v1

    .line 90
    invoke-virtual {p0, v0}, Lbfr;->a(I)Lcom/xiaopeng/musicradio/bean/music/ConResult;

    move-result-object v2

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    .line 92
    invoke-virtual {p0, v0, v1}, Lbfr;->a(ILcom/xiaopeng/musicradio/bean/music/ConResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MainDataOperation"

    const-string v2, "preLoadData error: "

    .line 95
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
