.class Lcom/alibaba/sdk/android/httpdns/j/m$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/httpdns/j/m;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/j/m;

.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/httpdns/j/m;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/m$e;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/m$e;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/m$e;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Lcom/alibaba/sdk/android/httpdns/j/m;)Lcom/alibaba/sdk/android/httpdns/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/m$e;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/httpdns/a/b;->a(Ljava/util/List;)V

    return-void
.end method
