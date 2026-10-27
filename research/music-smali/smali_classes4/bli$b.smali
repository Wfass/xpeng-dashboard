.class public final Lbli$b;
.super Ljava/lang/Object;
.source "PlayerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lbli$b;->a:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 29
    iget v0, p0, Lbli$b;->a:F

    return v0
.end method
