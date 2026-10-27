.class public Lorg/chromium/net/d$a;
.super Ljava/lang/Object;
.source "CronetEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/d$a$a;
    }
.end annotation


# instance fields
.field protected final a:Lorg/chromium/net/j;


# direct methods
.method public constructor <init>(Lorg/chromium/net/j;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/chromium/net/d$a;->a:Lorg/chromium/net/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/chromium/net/d$a;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/chromium/net/d$a;->a:Lorg/chromium/net/j;

    invoke-virtual {v0, p1}, Lorg/chromium/net/j;->a(Ljava/lang/String;)Lorg/chromium/net/j;

    return-object p0
.end method

.method public a(Z)Lorg/chromium/net/d$a;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/chromium/net/d$a;->a:Lorg/chromium/net/j;

    invoke-virtual {v0, p1}, Lorg/chromium/net/j;->b(Z)Lorg/chromium/net/j;

    return-object p0
.end method

.method public a()Lorg/chromium/net/d;
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/chromium/net/d$a;->a:Lorg/chromium/net/j;

    invoke-virtual {v0}, Lorg/chromium/net/j;->a()Lorg/chromium/net/h;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Lorg/chromium/net/d$a;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/chromium/net/d$a;->a:Lorg/chromium/net/j;

    invoke-virtual {v0, p1}, Lorg/chromium/net/j;->a(Z)Lorg/chromium/net/j;

    return-object p0
.end method
