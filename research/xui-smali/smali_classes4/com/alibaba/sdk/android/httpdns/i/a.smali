.class public abstract Lcom/alibaba/sdk/android/httpdns/i/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final a:Lcom/alibaba/sdk/android/httpdns/i/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/httpdns/i/i<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/httpdns/i/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/httpdns/i/i<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/i/a;->a:Lcom/alibaba/sdk/android/httpdns/i/i;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public run()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/i/a;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/i/a;->a:Lcom/alibaba/sdk/android/httpdns/i/i;

    invoke-interface {v1, v0}, Lcom/alibaba/sdk/android/httpdns/i/i;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/i/a;->a:Lcom/alibaba/sdk/android/httpdns/i/i;

    invoke-interface {v1, v0}, Lcom/alibaba/sdk/android/httpdns/i/i;->a(Ljava/lang/Throwable;)V

    return-void
.end method
