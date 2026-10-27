.class public abstract Lbdi;
.super Ljava/lang/Object;
.source "ReplayUpBase.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lbdi;->a:Z

    return-void
.end method

.method public abstract b()I
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lbdi;->a:Z

    return v0
.end method
