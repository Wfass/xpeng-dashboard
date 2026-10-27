.class public Lcom/alibaba/sdk/android/httpdns/i/k;
.super Lcom/alibaba/sdk/android/httpdns/i/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/sdk/android/httpdns/i/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/httpdns/i/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/httpdns/i/c<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/i/h;-><init>(Lcom/alibaba/sdk/android/httpdns/i/c;)V

    iput p2, p0, Lcom/alibaba/sdk/android/httpdns/i/k;->a:I

    return-void
.end method

.method private a(Ljava/lang/Throwable;)Z
    .locals 1

    instance-of v0, p1, Lcom/alibaba/sdk/android/httpdns/i/b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alibaba/sdk/android/httpdns/i/b;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/i/b;->b()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :goto_0
    :try_start_0
    invoke-super {p0}, Lcom/alibaba/sdk/android/httpdns/i/h;->a()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/httpdns/i/k;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/alibaba/sdk/android/httpdns/i/k;->a:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/sdk/android/httpdns/i/k;->a:I

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    throw v0
.end method
