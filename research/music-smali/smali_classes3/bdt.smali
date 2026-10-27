.class public Lbdt;
.super Ljava/lang/Object;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbdt$b;,
        Lbdt$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbdt$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, " {\"menList\":[\"kugou\",\"read\",\"blue\",\"netease\",\"usb\",\"radio\"]}"

    .line 26
    iput-object v0, p0, Lbdt;->a:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbdt;->b:Ljava/util/List;

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lbdt;->c:Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Lbdt;->o()V

    return-void
.end method

.method synthetic constructor <init>(Lbdt$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lbdt;-><init>()V

    return-void
.end method

.method public static b()Lbdt;
    .locals 1

    .line 45
    sget-object v0, Lbdt$a;->a:Lbdt;

    return-object v0
.end method

.method private c(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 94
    :goto_0
    iget-object v1, p0, Lbdt;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 95
    iget-object v1, p0, Lbdt;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbdt$b;

    iget-object v1, v1, Lbdt$b;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private o()V
    .locals 7

    const-string v0, "kugou"

    const-string v1, "netease"

    const-string v2, "qq"

    const-string v3, "read"

    const-string v4, "radio"

    const-string v5, "blue"

    const-string v6, "usb"

    .line 121
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 123
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 124
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 125
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 128
    :cond_0
    new-instance v4, Lbdt$b;

    invoke-direct {v4}, Lbdt$b;-><init>()V

    .line 129
    iput v2, v4, Lbdt$b;->b:I

    .line 130
    iput-object v3, v4, Lbdt$b;->a:Ljava/lang/String;

    .line 131
    iget-object v3, p0, Lbdt;->b:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "SELECT_MENU_GUIDE"

    .line 135
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bh;->g(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "SELECT_MENU_INDEX"

    .line 136
    invoke-static {v3, v1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v1

    .line 137
    iget-object v4, p0, Lbdt;->a:Ljava/lang/String;

    const-class v5, Lcom/xiaopeng/musicradio/bean/MenuList;

    invoke-static {v4, v5}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/MenuList;

    .line 138
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/MenuList;->getMenList()Ljava/util/List;

    move-result-object v4

    .line 139
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v1, :cond_2

    .line 140
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v1, ""

    .line 142
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 143
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 145
    invoke-static {v3, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    :cond_3
    const/4 v0, 0x1

    .line 148
    invoke-static {v2, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lbdt;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lbdt;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 53
    :goto_0
    iget-object v2, p0, Lbdt;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 54
    iget-object v2, p0, Lbdt;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbdt$b;

    iget-object v2, v2, Lbdt$b;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public c()I
    .locals 1

    const-string v0, "netease"

    .line 62
    invoke-virtual {p0, v0}, Lbdt;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    const-string v0, "kugou"

    .line 66
    invoke-virtual {p0, v0}, Lbdt;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    const-string v0, "qq"

    .line 70
    invoke-virtual {p0, v0}, Lbdt;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    const-string v0, "read"

    .line 74
    invoke-virtual {p0, v0}, Lbdt;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    const-string v0, "radio"

    .line 78
    invoke-virtual {p0, v0}, Lbdt;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    const-string v0, "qq"

    .line 82
    invoke-direct {p0, v0}, Lbdt;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    const-string v0, "read"

    .line 86
    invoke-direct {p0, v0}, Lbdt;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    const-string v0, "radio"

    .line 90
    invoke-direct {p0, v0}, Lbdt;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    const-string v0, "blue"

    .line 103
    invoke-virtual {p0, v0}, Lbdt;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    const-string v0, "usb"

    .line 107
    invoke-virtual {p0, v0}, Lbdt;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 2

    .line 111
    iget-object v0, p0, Lbdt;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdt$b;

    .line 112
    iget-object v0, v0, Lbdt$b;->a:Ljava/lang/String;

    .line 113
    invoke-virtual {p0, v0}, Lbdt;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbdt$b;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lbdt;->b:Ljava/util/List;

    return-object v0
.end method
