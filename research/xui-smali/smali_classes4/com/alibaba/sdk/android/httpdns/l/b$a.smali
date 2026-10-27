.class Lcom/alibaba/sdk/android/httpdns/l/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/l/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/httpdns/l/b;->a(Lcom/alibaba/sdk/android/httpdns/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/l/b;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/httpdns/l/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/l/b$a;->a:Lcom/alibaba/sdk/android/httpdns/l/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/l/b$a;->a:Lcom/alibaba/sdk/android/httpdns/l/b;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/l/b;->a(Lcom/alibaba/sdk/android/httpdns/l/b;)Lcom/alibaba/sdk/android/httpdns/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a()Lcom/alibaba/sdk/android/httpdns/b/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/httpdns/b/c;->a([Ljava/lang/String;[I)V

    return-void
.end method
