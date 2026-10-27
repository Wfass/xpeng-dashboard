.class Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$3;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$3;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;

    iget-object v1, p0, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b$3;->a:Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;

    invoke-static {v1}, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->a(Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;->a(Lcom/alibaba/sdk/android/man/crashreporter/handler/b/b;I)I

    .line 55
    return-void
.end method
