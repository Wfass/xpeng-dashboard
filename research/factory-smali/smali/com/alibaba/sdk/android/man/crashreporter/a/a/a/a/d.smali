.class public Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b;


# instance fields
.field private final a:Lcom/alibaba/sdk/android/man/crashreporter/global/a;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/man/crashreporter/global/a;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/d;->a:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/alibaba/sdk/android/man/crashreporter/global/a;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->d:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/d;->a:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->d:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 28
    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->e:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/d;->a:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 29
    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->e:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    const-string v2, "events"

    invoke-static {v2, v1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->f:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    iget-object v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a/d;->a:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->f:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    const-string v2, "radios"

    invoke-static {v2, v1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/b/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_2
    :goto_0
    return-void
.end method
