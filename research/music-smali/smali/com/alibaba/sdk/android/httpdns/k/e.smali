.class public Lcom/alibaba/sdk/android/httpdns/k/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/i/g$a;


# instance fields
.field private a:I

.field private final a:[Lcom/alibaba/sdk/android/httpdns/k/a;


# direct methods
.method public constructor <init>([Lcom/alibaba/sdk/android/httpdns/k/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/k/e;->a:I

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/k/e;->a:[Lcom/alibaba/sdk/android/httpdns/k/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/httpdns/i/d;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/alibaba/sdk/android/httpdns/i/d;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/alibaba/sdk/android/httpdns/i/d;Ljava/lang/Throwable;)V
    .locals 2

    iget p2, p0, Lcom/alibaba/sdk/android/httpdns/k/e;->a:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/alibaba/sdk/android/httpdns/k/e;->a:I

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/e;->a:[Lcom/alibaba/sdk/android/httpdns/k/a;

    array-length v1, v0

    if-ge p2, v1, :cond_0

    aget-object p2, v0, p2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/k/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/httpdns/i/d;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/k/e;->a:[Lcom/alibaba/sdk/android/httpdns/k/a;

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/k/e;->a:I

    aget-object p2, p2, v0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/i/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alibaba/sdk/android/httpdns/k/a;->a(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/httpdns/i/d;->a(I)V

    :cond_0
    return-void
.end method
