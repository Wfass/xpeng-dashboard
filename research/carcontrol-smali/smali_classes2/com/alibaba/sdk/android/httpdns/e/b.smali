.class public Lcom/alibaba/sdk/android/httpdns/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/b/d;


# instance fields
.field private a:I

.field private final a:Landroid/content/Context;

.field private a:Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;

.field private final a:Lcom/alibaba/sdk/android/httpdns/b/a;

.field private a:Lcom/alibaba/sdk/android/httpdns/b/b;

.field private final a:Lcom/alibaba/sdk/android/httpdns/b/c;

.field private final a:Ljava/lang/String;

.field protected a:Ljava/util/concurrent/ExecutorService;

.field private a:Z

.field private b:Lcom/alibaba/sdk/android/httpdns/b/b;

.field private b:Ljava/lang/String;

.field protected b:Ljava/util/concurrent/ExecutorService;

.field private b:Z

.field private c:Ljava/lang/String;

.field protected c:Ljava/util/concurrent/ExecutorService;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Z

    const-string v0, "http://"

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Ljava/lang/String;

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->c:Z

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->d:Z

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/n/b;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/n/b;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/n/b;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->c:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/alibaba/sdk/android/httpdns/e/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->c:Ljava/lang/String;

    invoke-static {p2}, Lcom/alibaba/sdk/android/httpdns/c/e;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/b;

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->c:Ljava/lang/String;

    invoke-static {p2}, Lcom/alibaba/sdk/android/httpdns/c/e;->b(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Lcom/alibaba/sdk/android/httpdns/b/b;

    new-instance p2, Lcom/alibaba/sdk/android/httpdns/b/c;

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[I

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/b;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[I

    move-result-object v5

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/httpdns/b/c;-><init>(Lcom/alibaba/sdk/android/httpdns/e/b;[Ljava/lang/String;[I[Ljava/lang/String;[I)V

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/c;

    new-instance p2, Lcom/alibaba/sdk/android/httpdns/b/a;

    invoke-direct {p2}, Lcom/alibaba/sdk/android/httpdns/b/a;-><init>()V

    invoke-virtual {p2, p1, p0}, Lcom/alibaba/sdk/android/httpdns/b/a;->a(Landroid/content/Context;Lcom/alibaba/sdk/android/httpdns/e/b;)V

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/a;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;->getInitConfig(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/InitConfig;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/InitConfig;->getRegion()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "us"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "sg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "hk"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "de"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    return-object p1

    :sswitch_data_0
    .sparse-switch
        0xc81 -> :sswitch_3
        0xd03 -> :sswitch_2
        0xe54 -> :sswitch_1
        0xe9e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:I

    return v0
.end method

.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a()Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;

    return-object v0
.end method

.method public a()Lcom/alibaba/sdk/android/httpdns/b/b;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Lcom/alibaba/sdk/android/httpdns/b/b;

    return-object v0
.end method

.method public a()Lcom/alibaba/sdk/android/httpdns/b/c;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/c;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->c:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/sdk/android/httpdns/b/a;->b(Landroid/content/Context;Lcom/alibaba/sdk/android/httpdns/e/b;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:I

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Z

    const-string v1, "enable"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "enable"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Z

    return-void
.end method

.method public a(Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Z

    return-void
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/b;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/c;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/httpdns/b/b;->a(Lcom/alibaba/sdk/android/httpdns/b/b;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/c/e;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/b;

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/c/e;->b(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Lcom/alibaba/sdk/android/httpdns/b/b;

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/c;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/b;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/b;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->b()[I

    move-result-object v3

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/b;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/b;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->a()[I

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/sdk/android/httpdns/b/c;->b(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[I)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p1, "https://"

    goto :goto_0

    :cond_0
    const-string p1, "http://"

    :goto_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()V

    :cond_1
    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public a()[Lcom/alibaba/sdk/android/httpdns/b/d;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/sdk/android/httpdns/b/d;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public b()Lcom/alibaba/sdk/android/httpdns/b/b;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/b;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->e:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->e:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Z

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->d:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lcom/alibaba/sdk/android/httpdns/e/b;

    iget-boolean v2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Z

    iget-boolean v3, p1, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:I

    iget v3, p1, Lcom/alibaba/sdk/android/httpdns/e/b;->a:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Z

    iget-boolean v3, p1, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->c:Z

    iget-boolean v3, p1, Lcom/alibaba/sdk/android/httpdns/e/b;->c:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->d:Z

    iget-boolean v3, p1, Lcom/alibaba/sdk/android/httpdns/e/b;->d:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Landroid/content/Context;

    iget-object v3, p1, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/b;

    iget-object v3, p1, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/b;

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Lcom/alibaba/sdk/android/httpdns/b/b;

    iget-object v3, p1, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Lcom/alibaba/sdk/android/httpdns/b/b;

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/c;

    iget-object v3, p1, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/c;

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/sdk/android/httpdns/e/b;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/a;

    iget-object v3, p1, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/a;

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p1, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p1, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {v2, v3}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->c:Ljava/util/concurrent/ExecutorService;

    iget-object p1, p1, Lcom/alibaba/sdk/android/httpdns/e/b;->c:Ljava/util/concurrent/ExecutorService;

    invoke-static {v2, p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Lcom/alibaba/sdk/android/httpdns/b/b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/c;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->c:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Lcom/alibaba/sdk/android/httpdns/b/a;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->a:Ljava/util/concurrent/ExecutorService;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->b:Ljava/util/concurrent/ExecutorService;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/e/b;->c:Ljava/util/concurrent/ExecutorService;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
