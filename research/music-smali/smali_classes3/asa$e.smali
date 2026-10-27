.class public Lasa$e;
.super Ljava/lang/Object;
.source "BtMusicEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Lasa$e;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 107
    iget v0, p0, Lasa$e;->a:I

    return v0
.end method
