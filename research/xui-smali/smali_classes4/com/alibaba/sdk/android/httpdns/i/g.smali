.class public Lcom/alibaba/sdk/android/httpdns/i/g;
.super Lcom/alibaba/sdk/android/httpdns/i/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/httpdns/i/g$a;
    }
.end annotation

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
.field private final a:Lcom/alibaba/sdk/android/httpdns/i/g$a;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/httpdns/i/c;Lcom/alibaba/sdk/android/httpdns/i/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/httpdns/i/c<",
            "TT;>;",
            "Lcom/alibaba/sdk/android/httpdns/i/g$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/httpdns/i/h;-><init>(Lcom/alibaba/sdk/android/httpdns/i/c;)V

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/i/g;->a:Lcom/alibaba/sdk/android/httpdns/i/g$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/i/g;->a:Lcom/alibaba/sdk/android/httpdns/i/g$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/i/h;->a()Lcom/alibaba/sdk/android/httpdns/i/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/httpdns/i/g$a;->a(Lcom/alibaba/sdk/android/httpdns/i/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/alibaba/sdk/android/httpdns/i/h;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/i/g;->a:Lcom/alibaba/sdk/android/httpdns/i/g$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/i/h;->a()Lcom/alibaba/sdk/android/httpdns/i/d;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/sdk/android/httpdns/i/g$a;->a(Lcom/alibaba/sdk/android/httpdns/i/d;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0

    :catch_1
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/i/g;->a:Lcom/alibaba/sdk/android/httpdns/i/g$a;

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/i/h;->a()Lcom/alibaba/sdk/android/httpdns/i/d;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/sdk/android/httpdns/i/g$a;->a(Lcom/alibaba/sdk/android/httpdns/i/d;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    throw v0
.end method
