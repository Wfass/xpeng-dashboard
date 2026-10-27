.class Lcew$c;
.super Ljava/lang/Object;
.source "ClientComms.java"

# interfaces
.implements Lcfg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final synthetic b:Lcew;


# direct methods
.method constructor <init>(Lcew;Ljava/lang/String;)V
    .locals 0

    .line 853
    iput-object p1, p0, Lcew$c;->b:Lcew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 854
    iput-object p2, p0, Lcew$c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lceb;)V
    .locals 6

    .line 858
    iget-object v0, p0, Lcew$c;->b:Lcew;

    invoke-virtual {v0}, Lcew;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    :goto_0
    iget-object v0, p0, Lcew$c;->b:Lcew;

    invoke-static {v0}, Lcew;->e(Lcew;)Lcex;

    move-result-object v0

    invoke-virtual {v0}, Lcex;->i()I

    move-result v0

    iget-object v1, p0, Lcew$c;->b:Lcew;

    invoke-static {v1}, Lcew;->e(Lcew;)Lcex;

    move-result-object v1

    invoke-virtual {v1}, Lcex;->j()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 865
    invoke-static {}, Lcew;->k()Lcgw;

    move-result-object v0

    invoke-static {}, Lcew;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcew$c;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lceb;->a()Lcgs;

    move-result-object v5

    invoke-virtual {v5}, Lcgs;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v4, "510"

    invoke-interface {v0, v1, v3, v4, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 866
    iget-object v0, p0, Lcew$c;->b:Lcew;

    invoke-virtual {p1}, Lceb;->a()Lcgs;

    move-result-object v1

    invoke-virtual {p1}, Lceb;->b()Lceu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcew;->a(Lcgs;Lceu;)V

    .line 868
    iget-object v0, p0, Lcew$c;->b:Lcew;

    invoke-static {v0}, Lcew;->e(Lcew;)Lcex;

    move-result-object v0

    invoke-virtual {p1}, Lceb;->a()Lcgs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcex;->b(Lcgs;)V

    return-void

    .line 861
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 871
    :cond_1
    invoke-static {}, Lcew;->k()Lcgw;

    move-result-object p1

    invoke-static {}, Lcew;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcew$c;->a:Ljava/lang/String;

    const-string v2, "208"

    invoke-interface {p1, v0, v1, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d68

    .line 872
    invoke-static {p1}, Lcfe;->a(I)Lceo;

    move-result-object p1

    throw p1
.end method
