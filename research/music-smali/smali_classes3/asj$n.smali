.class public Lasj$n;
.super Ljava/lang/Object;
.source "UserEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# instance fields
.field a:Z

.field b:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 402
    iput-boolean v0, p0, Lasj$n;->b:Z

    .line 405
    iput-boolean p1, p0, Lasj$n;->a:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 409
    iget-boolean v0, p0, Lasj$n;->a:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 417
    iget-boolean v0, p0, Lasj$n;->b:Z

    return v0
.end method
