.class final Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;

.field public a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$a;->a:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a;)V
    .locals 1

    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a$a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a;

    .line 114
    :try_start_0
    invoke-interface {v1, p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/a/a/a;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_1

    .line 115
    :catch_0
    move-exception v1

    .line 116
    const-string v2, "External collect error."

    invoke-static {v2, v1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    :goto_1
    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method
