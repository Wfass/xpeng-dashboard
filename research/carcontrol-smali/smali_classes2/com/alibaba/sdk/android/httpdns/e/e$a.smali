.class Lcom/alibaba/sdk/android/httpdns/e/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/crashdefend/CrashDefendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/httpdns/e/e;->a(Landroid/content/Context;Lcom/alibaba/sdk/android/httpdns/e/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/e/b;

.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/e/e;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/httpdns/e/e;Lcom/alibaba/sdk/android/httpdns/e/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/e$a;->a:Lcom/alibaba/sdk/android/httpdns/e/e;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/e/e$a;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSdkClosed(I)V
    .locals 1

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/e$a;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/httpdns/e/b;->a(Z)V

    const-string/jumbo p1, "sdk will not run any more"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onSdkStart(III)V
    .locals 0

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/e$a;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/httpdns/e/b;->a(Z)V

    return-void
.end method

.method public onSdkStop(IIIJ)V
    .locals 0

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/e/e$a;->a:Lcom/alibaba/sdk/android/httpdns/e/b;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/httpdns/e/b;->a(Z)V

    const-string/jumbo p1, "sdk is not safe to run"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->d(Ljava/lang/String;)V

    return-void
.end method
