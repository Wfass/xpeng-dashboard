.class public Lasa$f;
.super Ljava/lang/Object;
.source "BtMusicEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lasa$f;->a:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lasa$f;->a:Z

    return v0
.end method
