.class public Lcom/alibaba/sdk/android/httpdns/k/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/httpdns/k/d$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/alibaba/sdk/android/httpdns/e/b;

.field private final a:Lcom/alibaba/sdk/android/httpdns/k/c;

.field private final a:Lcom/alibaba/sdk/android/httpdns/k/d$b;

.field private final a:Lcom/alibaba/sdk/android/httpdns/k/f;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/httpdns/e/b;Lcom/alibaba/sdk/android/httpdns/k/d$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/k/d;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/k/d;->a:Lcom/alibaba/sdk/android/httpdns/k/d$b;

    new-instance p1, Lcom/alibaba/sdk/android/httpdns/k/c;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/httpdns/k/c;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/k/d;->a:Lcom/alibaba/sdk/android/httpdns/k/c;

    new-instance p1, Lcom/alibaba/sdk/android/httpdns/k/f;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/httpdns/k/f;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/k/d;->a:Lcom/alibaba/sdk/android/httpdns/k/f;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/k/d;)Lcom/alibaba/sdk/android/httpdns/e/b;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/k/d;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/k/d;)Lcom/alibaba/sdk/android/httpdns/k/c;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/k/d;->a:Lcom/alibaba/sdk/android/httpdns/k/c;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/k/d;)Lcom/alibaba/sdk/android/httpdns/k/f;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/k/d;->a:Lcom/alibaba/sdk/android/httpdns/k/f;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/k/d;Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/alibaba/sdk/android/httpdns/k/d;->a(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[I)V

    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[I)V
    .locals 8

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/d;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->regionEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/k/d;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/sdk/android/httpdns/b/c;->b(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/k/d;->a:Lcom/alibaba/sdk/android/httpdns/k/d$b;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/httpdns/k/d$b;->a(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/d;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/httpdns/k/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/d;->a:Lcom/alibaba/sdk/android/httpdns/k/c;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/httpdns/k/c;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/d;->a:Lcom/alibaba/sdk/android/httpdns/k/c;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/httpdns/k/c;->a(Ljava/lang/String;)[I

    move-result-object v4

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/d;->a:Lcom/alibaba/sdk/android/httpdns/k/c;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/httpdns/k/c;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/d;->a:Lcom/alibaba/sdk/android/httpdns/k/c;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/httpdns/k/c;->b(Ljava/lang/String;)[I

    move-result-object v6

    if-nez v3, :cond_2

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/d;->a:Lcom/alibaba/sdk/android/httpdns/k/f;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/httpdns/k/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/d;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/k/d$a;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/sdk/android/httpdns/k/d$a;-><init>(Lcom/alibaba/sdk/android/httpdns/k/d;Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lcom/alibaba/sdk/android/httpdns/k/h;->a(Lcom/alibaba/sdk/android/httpdns/e/b;Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/i/i;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/httpdns/k/d;->a(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[I)V

    return-void
.end method
