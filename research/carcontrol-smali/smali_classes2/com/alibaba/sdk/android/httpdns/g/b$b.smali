.class Lcom/alibaba/sdk/android/httpdns/g/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/g/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/httpdns/g/b;->a(Ljava/lang/String;[Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/g/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/g/a;

.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/g/b;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/httpdns/g/b;Lcom/alibaba/sdk/android/httpdns/g/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/g/b$b;->a:Lcom/alibaba/sdk/android/httpdns/g/b;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/g/b$b;->a:Lcom/alibaba/sdk/android/httpdns/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/g/b$b;->a:Lcom/alibaba/sdk/android/httpdns/g/b;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/g/b;->a(Lcom/alibaba/sdk/android/httpdns/g/b;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/g/b$b;->a:Lcom/alibaba/sdk/android/httpdns/g/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/httpdns/g/a;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
