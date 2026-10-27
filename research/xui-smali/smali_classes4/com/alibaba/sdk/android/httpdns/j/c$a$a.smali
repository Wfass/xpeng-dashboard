.class Lcom/alibaba/sdk/android/httpdns/j/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/g/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/httpdns/j/c$a;->a(Lcom/alibaba/sdk/android/httpdns/j/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/j/a$a;

.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/j/c$a;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/httpdns/j/c$a;Lcom/alibaba/sdk/android/httpdns/j/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a$a;->a:Lcom/alibaba/sdk/android/httpdns/j/c$a;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a$a;->a:Lcom/alibaba/sdk/android/httpdns/j/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a$a;->a:Lcom/alibaba/sdk/android/httpdns/j/c$a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/httpdns/j/c$a;->a:Lcom/alibaba/sdk/android/httpdns/j/c;

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/j/c;->a(Lcom/alibaba/sdk/android/httpdns/j/c;)Lcom/alibaba/sdk/android/httpdns/j/m;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a$a;->a:Lcom/alibaba/sdk/android/httpdns/j/a$a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/j/a$a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/c$a$a;->a:Lcom/alibaba/sdk/android/httpdns/j/a$a;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/httpdns/j/a$a;->a()Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
