.class public abstract Landroidx/media/g;
.super Ljava/lang/Object;
.source "VolumeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/g$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private d:I

.field private e:Landroidx/media/g$a;

.field private f:Landroid/media/VolumeProvider;


# virtual methods
.method public final a()I
    .locals 1

    .line 116
    iget v0, p0, Landroidx/media/g;->d:I

    return v0
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/media/g$a;)V
    .locals 0

    .line 191
    iput-object p1, p0, Landroidx/media/g;->e:Landroidx/media/g$a;

    return-void
.end method

.method public final b()I
    .locals 1

    .line 126
    iget v0, p0, Landroidx/media/g;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public final c()I
    .locals 1

    .line 135
    iget v0, p0, Landroidx/media/g;->b:I

    return v0
.end method

.method public d()Ljava/lang/Object;
    .locals 8

    .line 203
    iget-object v0, p0, Landroidx/media/g;->f:Landroid/media/VolumeProvider;

    if-nez v0, :cond_1

    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 205
    new-instance v0, Landroidx/media/g$1;

    iget v4, p0, Landroidx/media/g;->a:I

    iget v5, p0, Landroidx/media/g;->b:I

    iget v6, p0, Landroidx/media/g;->d:I

    iget-object v7, p0, Landroidx/media/g;->c:Ljava/lang/String;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroidx/media/g$1;-><init>(Landroidx/media/g;IIILjava/lang/String;)V

    iput-object v0, p0, Landroidx/media/g;->f:Landroid/media/VolumeProvider;

    goto :goto_0

    .line 217
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 218
    new-instance v0, Landroidx/media/g$2;

    iget v1, p0, Landroidx/media/g;->a:I

    iget v2, p0, Landroidx/media/g;->b:I

    iget v3, p0, Landroidx/media/g;->d:I

    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/media/g$2;-><init>(Landroidx/media/g;III)V

    iput-object v0, p0, Landroidx/media/g;->f:Landroid/media/VolumeProvider;

    .line 231
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media/g;->f:Landroid/media/VolumeProvider;

    return-object v0
.end method
