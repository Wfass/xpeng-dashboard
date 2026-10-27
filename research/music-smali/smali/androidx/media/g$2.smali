.class Landroidx/media/g$2;
.super Landroid/media/VolumeProvider;
.source "VolumeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/g;->d()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media/g;


# direct methods
.method constructor <init>(Landroidx/media/g;III)V
    .locals 0

    .line 218
    iput-object p1, p0, Landroidx/media/g$2;->a:Landroidx/media/g;

    invoke-direct {p0, p2, p3, p4}, Landroid/media/VolumeProvider;-><init>(III)V

    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 1

    .line 226
    iget-object v0, p0, Landroidx/media/g$2;->a:Landroidx/media/g;

    invoke-virtual {v0, p1}, Landroidx/media/g;->b(I)V

    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 1

    .line 221
    iget-object v0, p0, Landroidx/media/g$2;->a:Landroidx/media/g;

    invoke-virtual {v0, p1}, Landroidx/media/g;->a(I)V

    return-void
.end method
