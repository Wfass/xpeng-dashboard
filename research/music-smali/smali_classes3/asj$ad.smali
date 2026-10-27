.class public Lasj$ad;
.super Ljava/lang/Object;
.source "UserEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ad"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput p1, p0, Lasj$ad;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 452
    iget v0, p0, Lasj$ad;->a:I

    return v0
.end method
