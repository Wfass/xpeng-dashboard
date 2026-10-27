.class Lcom/alibaba/sdk/android/httpdns/j/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/g/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/httpdns/j/m;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/a/a;

.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/j/m;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/httpdns/j/m;Lcom/alibaba/sdk/android/httpdns/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/m$a;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/m$a;->a:Lcom/alibaba/sdk/android/httpdns/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/m$a;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/RequestIpType;->v4:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/m$a;->a:Lcom/alibaba/sdk/android/httpdns/a/a;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
