.class public Lasa$c;
.super Ljava/lang/Object;
.source "BtMusicEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lasa$c;->a:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lasa$c;->a:Z

    return v0
.end method
