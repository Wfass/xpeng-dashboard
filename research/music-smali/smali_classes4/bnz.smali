.class public Lbnz;
.super Ljava/lang/Object;
.source "SearchManagerModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbnz$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lbnz;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lbnz;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lbnz;->e:Z

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbnz;->f:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lbnz;->h:I

    .line 38
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0}, Lbnz;->b()V

    return-void
.end method

.method synthetic constructor <init>(Lbnz$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lbnz;-><init>()V

    return-void
.end method

.method public static a()Lbnz;
    .locals 1

    .line 34
    sget-object v0, Lbnz$a;->a:Lbnz;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lbnz;->b()V

    .line 57
    iput-object p1, p0, Lbnz;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 52
    iget-object v0, p0, Lbnz;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(ILjava/lang/String;IIILbkv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "III",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;",
            ">;)V"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "querySerarchResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", searchType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchManagerModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-static/range {p1 .. p6}, Lcom/xiaopeng/musicradio/search/logic/b;->a(ILjava/lang/String;IIILbkv;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lbnz;->a:Ljava/lang/String;

    .line 87
    invoke-direct {p0, p1}, Lbnz;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;IIILbkv;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;",
            ">;)V"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "querySerarchResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", searchType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchManagerModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v2

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 143
    invoke-virtual/range {v1 .. v7}, Lbnz;->a(ILjava/lang/String;IIILbkv;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lbnz;->e:Z

    return-void
.end method

.method public b()V
    .locals 4

    .line 43
    iget-object v0, p0, Lbnz;->f:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lbnz;->f:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lbnz;->f:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lbnz;->f:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lbnz;->f:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lbnz;->f:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 61
    iput p1, p0, Lbnz;->h:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lbnz;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lbnz;->e:Z

    return-void
.end method

.method public c()I
    .locals 1

    .line 65
    iget v0, p0, Lbnz;->h:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lbnz;->g:Ljava/lang/String;

    return-void
.end method

.method public c(I)Z
    .locals 2

    .line 69
    iget-object v0, p0, Lbnz;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lbnz;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lbnz;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .line 95
    iput p1, p0, Lbnz;->c:I

    return-void
.end method

.method public e()I
    .locals 1

    .line 91
    iget v0, p0, Lbnz;->c:I

    return v0
.end method

.method public e(I)V
    .locals 0

    .line 136
    iput p1, p0, Lbnz;->d:I

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lbnz;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 108
    iget v0, p0, Lbnz;->d:I

    return v0
.end method

.method public h()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lbnz;->e:Z

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lbnz;->g:Ljava/lang/String;

    return-object v0
.end method
