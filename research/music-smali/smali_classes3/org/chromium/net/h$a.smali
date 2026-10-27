.class public Lorg/chromium/net/h$a;
.super Lorg/chromium/net/d$a;
.source "ExperimentalCronetEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/net/j;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lorg/chromium/net/d$a;-><init>(Lorg/chromium/net/j;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;)Lorg/chromium/net/d$a;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lorg/chromium/net/h$a;->b(Ljava/lang/String;)Lorg/chromium/net/h$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Z)Lorg/chromium/net/d$a;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lorg/chromium/net/h$a;->c(Z)Lorg/chromium/net/h$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a()Lorg/chromium/net/d;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lorg/chromium/net/h$a;->b()Lorg/chromium/net/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Z)Lorg/chromium/net/d$a;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lorg/chromium/net/h$a;->d(Z)Lorg/chromium/net/h$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lorg/chromium/net/h$a;
    .locals 0

    .line 171
    invoke-super {p0, p1}, Lorg/chromium/net/d$a;->a(Ljava/lang/String;)Lorg/chromium/net/d$a;

    return-object p0
.end method

.method public b()Lorg/chromium/net/h;
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/chromium/net/h$a;->a:Lorg/chromium/net/j;

    invoke-virtual {v0}, Lorg/chromium/net/j;->a()Lorg/chromium/net/h;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)Lorg/chromium/net/h$a;
    .locals 0

    .line 189
    invoke-super {p0, p1}, Lorg/chromium/net/d$a;->a(Z)Lorg/chromium/net/d$a;

    return-object p0
.end method

.method public d(Z)Lorg/chromium/net/h$a;
    .locals 0

    .line 195
    invoke-super {p0, p1}, Lorg/chromium/net/d$a;->b(Z)Lorg/chromium/net/d$a;

    return-object p0
.end method
