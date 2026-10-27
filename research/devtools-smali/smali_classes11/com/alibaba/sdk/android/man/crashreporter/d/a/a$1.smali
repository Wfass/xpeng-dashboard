.class final Lcom/alibaba/sdk/android/man/crashreporter/d/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/man/crashreporter/d/a/a;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/d/a/a$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 40
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/d/a/a$1;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/e/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 42
    if-nez p1, :cond_0

    .line 43
    const-string p1, "FAILURE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 46
    :cond_0
    const-string v0, ""

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/e/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/e/i;->a(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
