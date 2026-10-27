.class public Lcom/amap/api/services/a/l;
.super Ljava/lang/Object;
.source "SDKInfo.java"


# annotations
.annotation runtime Lcom/amap/api/services/a/y;
    a = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/l$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/services/a/z;
        a = "a1"
        b = 0x6
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/services/a/z;
        a = "a2"
        b = 0x6
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/amap/api/services/a/z;
        a = "a6"
        b = 0x2
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/services/a/z;
        a = "a3"
        b = 0x6
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/services/a/z;
        a = "a4"
        b = 0x6
    .end annotation
.end field

.field private eG:[Ljava/lang/String;

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/amap/api/services/a/z;
        a = "a5"
        b = 0x6
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/a/l;->c:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/l;->eG:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method private constructor <init>(Lcom/amap/api/services/a/l$a;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/a/l;->c:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/l;->eG:[Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/amap/api/services/a/l$a;->a(Lcom/amap/api/services/a/l$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/l;->g:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lcom/amap/api/services/a/l$a;->b(Lcom/amap/api/services/a/l$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/l;->i:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/amap/api/services/a/l$a;->c(Lcom/amap/api/services/a/l$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/l;->h:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/amap/api/services/a/l$a;->d(Lcom/amap/api/services/a/l$a;)Z

    move-result v0

    iput v0, p0, Lcom/amap/api/services/a/l;->c:I

    .line 52
    invoke-static {p1}, Lcom/amap/api/services/a/l$a;->e(Lcom/amap/api/services/a/l$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/l;->j:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/amap/api/services/a/l$a;->f(Lcom/amap/api/services/a/l$a;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/l;->eG:[Ljava/lang/String;

    .line 55
    iget-object p1, p0, Lcom/amap/api/services/a/l;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/amap/api/services/a/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/l;->b:Ljava/lang/String;

    .line 56
    iget-object p1, p0, Lcom/amap/api/services/a/l;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/amap/api/services/a/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/l;->a:Ljava/lang/String;

    .line 57
    iget-object p1, p0, Lcom/amap/api/services/a/l;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/amap/api/services/a/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/l;->d:Ljava/lang/String;

    .line 58
    iget-object p1, p0, Lcom/amap/api/services/a/l;->eG:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/amap/api/services/a/l;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/services/a/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/l;->e:Ljava/lang/String;

    .line 59
    iget-object p1, p0, Lcom/amap/api/services/a/l;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/amap/api/services/a/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/l;->f:Ljava/lang/String;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/services/a/l$a;Lcom/amap/api/services/a/l$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/l;-><init>(Lcom/amap/api/services/a/l$a;)V

    return-void
.end method

.method private H(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 178
    :try_start_0
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    return-object p1

    .line 180
    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    const/4 p1, 0x0

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 204
    const-string v1, "a1"

    invoke-static {p0}, Lcom/amap/api/services/a/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {v0}, Lcom/amap/api/services/a/x;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 188
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 189
    return-object v0

    .line 191
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 193
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 196
    :catch_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 199
    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .line 211
    const-string v0, "a6=1"

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amap/api/services/a/l;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/a/l;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/amap/api/services/a/l;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/services/a/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/l;->i:Ljava/lang/String;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/l;->i:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amap/api/services/a/l;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/a/l;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/amap/api/services/a/l;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/services/a/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/l;->g:Ljava/lang/String;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/l;->g:Ljava/lang/String;

    return-object v0
.end method

.method public bl()[Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/amap/api/services/a/l;->eG:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/a/l;->eG:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/l;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/amap/api/services/a/l;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/services/a/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/l;->H(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/l;->eG:[Ljava/lang/String;

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/a/l;->eG:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/amap/api/services/a/l;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/a/l;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/amap/api/services/a/l;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/services/a/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/l;->j:Ljava/lang/String;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/l;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    const-string v0, "standard"

    iput-object v0, p0, Lcom/amap/api/services/a/l;->j:Ljava/lang/String;

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/a/l;->j:Ljava/lang/String;

    return-object v0
.end method
