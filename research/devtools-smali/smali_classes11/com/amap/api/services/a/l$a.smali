.class public Lcom/amap/api/services/a/l$a;
.super Ljava/lang/Object;
.source "SDKInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/a/l$a;->d:Z

    .line 69
    const-string v0, "standard"

    iput-object v0, p0, Lcom/amap/api/services/a/l$a;->e:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/l$a;->f:[Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/amap/api/services/a/l$a;->a:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/amap/api/services/a/l$a;->c:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/amap/api/services/a/l$a;->b:Ljava/lang/String;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/l$a;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amap/api/services/a/l$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/services/a/l$a;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amap/api/services/a/l$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/services/a/l$a;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amap/api/services/a/l$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/services/a/l$a;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/amap/api/services/a/l$a;->d:Z

    return p0
.end method

.method static synthetic e(Lcom/amap/api/services/a/l$a;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amap/api/services/a/l$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/amap/api/services/a/l$a;)[Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amap/api/services/a/l$a;->f:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public b([Ljava/lang/String;)Lcom/amap/api/services/a/l$a;
    .locals 0

    .line 107
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/services/a/l$a;->f:[Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public bm()Lcom/amap/api/services/a/l;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/au;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/amap/api/services/a/l$a;->f:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Lcom/amap/api/services/a/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amap/api/services/a/l;-><init>(Lcom/amap/api/services/a/l$a;Lcom/amap/api/services/a/l$1;)V

    return-object v0

    .line 119
    :cond_0
    new-instance v0, Lcom/amap/api/services/a/au;

    const-string v1, "sdk packages is null"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h(Z)Lcom/amap/api/services/a/l$a;
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/amap/api/services/a/l$a;->d:Z

    .line 86
    return-object p0
.end method
