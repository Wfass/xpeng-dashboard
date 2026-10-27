.class public Lbve;
.super Ljava/lang/Object;
.source "Recognizer.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/xiaopeng/speech/common/util/f;

.field private c:Lcom/xiaopeng/speech/common/util/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/b<",
            "Lbvc;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Lbvc;

.field private final e:Lbuf$a;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/common/util/f;)V
    .locals 2

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Recognizer"

    .line 151
    iput-object v0, p0, Lbve;->a:Ljava/lang/String;

    .line 154
    new-instance v0, Lcom/xiaopeng/speech/common/util/b;

    const-string v1, "IRecognizerProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbve;->c:Lcom/xiaopeng/speech/common/util/b;

    .line 304
    new-instance v0, Lbve$4;

    invoke-direct {v0, p0}, Lbve$4;-><init>(Lbve;)V

    iput-object v0, p0, Lbve;->e:Lbuf$a;

    .line 159
    iput-object p1, p0, Lbve;->b:Lcom/xiaopeng/speech/common/util/f;

    .line 160
    iget-object v0, p0, Lbve;->c:Lcom/xiaopeng/speech/common/util/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/b;->a(Lcom/xiaopeng/speech/common/util/f;)V

    return-void
.end method

.method static synthetic a(Lbve;Lbvc;)Lbvc;
    .locals 0

    .line 16
    iput-object p1, p0, Lbve;->d:Lbvc;

    return-object p1
.end method

.method static synthetic a(Lbve;)Lcom/xiaopeng/speech/common/util/b;
    .locals 0

    .line 16
    iget-object p0, p0, Lbve;->c:Lcom/xiaopeng/speech/common/util/b;

    return-object p0
.end method

.method static synthetic a(Lbve;Ljava/lang/String;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lbve;->b(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lbve;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lbve;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lbve;Ljava/lang/String;Z)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lbve;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 1

    .line 380
    iget-object v0, p0, Lbve;->d:Lbvc;

    if-eqz v0, :cond_0

    .line 382
    invoke-interface {v0, p1, p2}, Lbvc;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lbve;->d:Lbvc;

    if-eqz v0, :cond_0

    .line 375
    invoke-interface {v0, p1, p2}, Lbvc;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 1

    .line 387
    iget-object v0, p0, Lbve;->d:Lbvc;

    if-eqz v0, :cond_0

    .line 389
    invoke-interface {v0, p1, p2}, Lbvc;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lbuf$a;
    .locals 1

    .line 301
    iget-object v0, p0, Lbve;->e:Lbuf$a;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 261
    iget-object v0, p0, Lbve;->c:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbve$2;

    invoke-direct {v1, p0, p1, p2}, Lbve$2;-><init>(Lbve;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lbve;->c:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbve$1;

    invoke-direct {v1, p0, p1, p2}, Lbve$1;-><init>(Lbve;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .line 276
    iget-object v0, p0, Lbve;->c:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbve$3;

    invoke-direct {v1, p0, p1, p2}, Lbve$3;-><init>(Lbve;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method
