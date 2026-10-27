.class public Lbrx;
.super Ljava/lang/Object;
.source "ReportFromStackUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrx$a;
    }
.end annotation


# instance fields
.field private a:[Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:[Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:[Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 22
    new-array v1, v0, [Ljava/util/Stack;

    iput-object v1, p0, Lbrx;->a:[Ljava/util/Stack;

    .line 23
    new-array v1, v0, [Ljava/util/Queue;

    iput-object v1, p0, Lbrx;->b:[Ljava/util/Queue;

    .line 24
    new-array v0, v0, [Ljava/lang/Boolean;

    iput-object v0, p0, Lbrx;->c:[Ljava/lang/Boolean;

    return-void
.end method

.method public static a()Lbrx;
    .locals 1

    .line 31
    sget-object v0, Lbrx$a;->a:Lbrx;

    return-object v0
.end method

.method private a(I)Ljava/util/Stack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lbrx;->a:[Ljava/util/Stack;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 53
    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    aput-object v1, v0, p1

    .line 56
    :cond_0
    iget-object v0, p0, Lbrx;->a:[Ljava/util/Stack;

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .line 80
    invoke-direct {p0, p2}, Lbrx;->a(I)Ljava/util/Stack;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-virtual {p2}, Ljava/util/Stack;->clear()V

    .line 85
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 89
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p2, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(I)Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lbrx;->b:[Ljava/util/Queue;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 63
    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    aput-object v1, v0, p1

    .line 66
    :cond_0
    iget-object v0, p0, Lbrx;->b:[Ljava/util/Queue;

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(I)V
    .locals 2

    .line 102
    invoke-direct {p0, p1}, Lbrx;->a(I)Ljava/util/Stack;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 107
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 109
    :cond_1
    iget-object v0, p0, Lbrx;->c:[Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, p1

    return-void
.end method

.method private d(I)V
    .locals 3

    .line 121
    invoke-direct {p0, p1}, Lbrx;->b(I)Ljava/util/Queue;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 126
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 128
    :cond_1
    invoke-direct {p0, p1}, Lbrx;->f(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 132
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_2
    iget-object v0, p0, Lbrx;->c:[Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, p1

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report_key_from"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e(I)Ljava/lang/String;
    .locals 3

    .line 147
    invoke-direct {p0, p1}, Lbrx;->b(I)Ljava/util/Queue;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 151
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lbrx;->c:[Ljava/lang/Boolean;

    aget-object v2, v1, p1

    if-eqz v2, :cond_1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 157
    :cond_1
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 152
    :cond_2
    :goto_0
    iget-object v1, p0, Lbrx;->c:[Ljava/lang/Boolean;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 153
    iget-object v1, p0, Lbrx;->c:[Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, p1

    .line 155
    :cond_3
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private f(I)Ljava/lang/String;
    .locals 2

    .line 170
    invoke-direct {p0, p1}, Lbrx;->a(I)Ljava/util/Stack;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 174
    :cond_0
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 177
    :cond_1
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public b()V
    .locals 2

    const-string v0, "report_key_from0"

    .line 38
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, v0, v1}, Lbrx;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "report_key_from1"

    .line 45
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 47
    invoke-direct {p0, v0, v1}, Lbrx;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, v0}, Lbrx;->c(I)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 98
    invoke-direct {p0, v0}, Lbrx;->c(I)V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, v0}, Lbrx;->d(I)V

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    .line 117
    invoke-direct {p0, v0}, Lbrx;->d(I)V

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, v0}, Lbrx;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 143
    invoke-direct {p0, v0}, Lbrx;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
