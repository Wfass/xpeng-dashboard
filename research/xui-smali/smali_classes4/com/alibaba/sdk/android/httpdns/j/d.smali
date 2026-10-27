.class public Lcom/alibaba/sdk/android/httpdns/j/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/j/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/httpdns/j/d$b;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/sdk/android/httpdns/j/d$b;

.field private final a:Lcom/alibaba/sdk/android/httpdns/j/f;

.field private final a:Lcom/alibaba/sdk/android/httpdns/j/r;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/httpdns/k/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/j/d$b;->a:Lcom/alibaba/sdk/android/httpdns/j/d$b;

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/d;->a:Lcom/alibaba/sdk/android/httpdns/j/d$b;

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/j/f;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/sdk/android/httpdns/j/f;-><init>(Lcom/alibaba/sdk/android/httpdns/k/d;Lcom/alibaba/sdk/android/httpdns/j/s;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/d;->a:Lcom/alibaba/sdk/android/httpdns/j/f;

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/j/r;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/sdk/android/httpdns/j/r;-><init>(Lcom/alibaba/sdk/android/httpdns/k/d;Lcom/alibaba/sdk/android/httpdns/j/s;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/d;->a:Lcom/alibaba/sdk/android/httpdns/j/r;

    return-void
.end method


# virtual methods
.method public a()Lcom/alibaba/sdk/android/httpdns/j/i;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/d;->a:Lcom/alibaba/sdk/android/httpdns/j/d$b;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/j/d$b;->c:Lcom/alibaba/sdk/android/httpdns/j/d$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/d;->a:Lcom/alibaba/sdk/android/httpdns/j/r;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/d;->a:Lcom/alibaba/sdk/android/httpdns/j/f;

    return-object v0
.end method

.method public a()V
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/j/d$a;->a:[I

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/d;->a:Lcom/alibaba/sdk/android/httpdns/j/d$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/j/d$b;->c:Lcom/alibaba/sdk/android/httpdns/j/d$b;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/j/d$b;->b:Lcom/alibaba/sdk/android/httpdns/j/d$b;

    :goto_0
    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/d;->a:Lcom/alibaba/sdk/android/httpdns/j/d$b;

    return-void
.end method

.method public b()V
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/j/d$b;->a:Lcom/alibaba/sdk/android/httpdns/j/d$b;

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/d;->a:Lcom/alibaba/sdk/android/httpdns/j/d$b;

    return-void
.end method

.method public c()V
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/j/d$b;->a:Lcom/alibaba/sdk/android/httpdns/j/d$b;

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/d;->a:Lcom/alibaba/sdk/android/httpdns/j/d$b;

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/d;->a:Lcom/alibaba/sdk/android/httpdns/j/r;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/j/r;->a()V

    return-void
.end method
